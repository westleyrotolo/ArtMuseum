//
//  ARViewController.swift
//  artmuseum
//
//  Created by Westley Rotolo on 20/06/17.
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//

import UIKit
import AVFoundation
import CoreLocation
class ARViewController: UIViewController, CLLocationManagerDelegate, UITableViewDataSource, UITableViewDelegate {
    
    
    
    var art:[(name: String, author: String, pic: UIImage, degrees: Float)] = []
    var artTable:[(name: String, author: String, pic: UIImage, degrees: Float)] = []
    @IBOutlet weak var tableView: UITableView!
    var videoDataOutput: AVCaptureVideoDataOutput!
    var videoDataOutputQueue: DispatchQueue!
    var previewLayer:AVCaptureVideoPreviewLayer!
    var captureDevice : AVCaptureDevice!
    var locationManager: CLLocationManager!
    @IBOutlet weak var previewView: UIView!
    
    let cellSpacingHeight: CGFloat = 5
    let session = AVCaptureSession()
    override func viewDidLoad() {
        super.viewDidLoad()
        previewView.contentMode = UIViewContentMode.scaleAspectFit
        view.insertSubview(previewView, at: 0)
        AVCaptureDevice.requestAccess(forMediaType: AVMediaTypeVideo) { response in
            if response {
                //access granted
            } else {
            
            }
        }
        
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.startUpdatingHeading()

        tableView.dataSource = self
        tableView.delegate = self
        art.append((name: "Primo quadro",author: "Leonardo Da Vinci", pic: #imageLiteral(resourceName: "img2"), degrees: Float(202)))
        art.append((name: "Secondo quadro", author: "Leonardo Da Vinci", pic: #imageLiteral(resourceName: "img3"), degrees: Float(290)))
        art.append((name: "terzo quadro", author: "Leonardo Da Vinci", pic: #imageLiteral(resourceName: "img3"), degrees: Float(290)))
        art.append((name: "quarto quadro noioso", author: "Leonardo Da Vinci", pic: #imageLiteral(resourceName: "img3"), degrees: Float(340)))
        art.append((name: "quinto quadro noioso", author: "Leonardo Da Vinci", pic: #imageLiteral(resourceName: "img3"), degrees: Float(340)))
        art.append((name: "sesto noioso", author: "Leonardo Da Vinci", pic: #imageLiteral(resourceName: "img3"), degrees: Float(22)))
        art.append((name: "settimo noioso", author: "Leonardo Da Vinci", pic: #imageLiteral(resourceName: "img3"), degrees: Float(110)))
        art.append((name: "ottavo  noioso", author: "Leonardo Da Vinci", pic: #imageLiteral(resourceName: "img3"), degrees: Float(110)))

        
        self.setupAVCapture()
     }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        
    }
    
    var lastDegrees : Float = Float(900)
    func locationManager(_ manager: CLLocationManager, didUpdateHeading newHeading: CLHeading) {
        print("degrass: X: \(newHeading.x), Y: \(newHeading.y), Z: \(newHeading.z)")
       let currentDegrees: Float = Float(newHeading.magneticHeading)
        if Swift.abs(lastDegrees-currentDegrees)<5{
            return
        }
        print("degrass: \(newHeading.magneticHeading)")
        for x in art{
            if Swift.abs((x.degrees-currentDegrees)) < 20 {
                let index = artTable.index(where: { (item) -> Bool in
                    item.name == x.name
                })
                if let id = index{
                    return
                }
                artTable.insert(x, at: 0)
                tableView.beginUpdates()
                tableView.insertRows(at: [IndexPath(row: 0, section: 0)], with: .automatic)
                tableView.endUpdates()

            } else {
                let index = artTable.index(where: { (item) -> Bool in
                    item.name == x.name
                })
                if let id = index{
                artTable.remove(at: id)
                tableView.beginUpdates()
                tableView.deleteRows(at: [IndexPath(row: id, section: 0)], with: .automatic)
                tableView.endUpdates()
                }
            }
            
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return artTable.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ARCell", for: indexPath) as! ARTableViewCell
        cell.imageAR.image = artTable[indexPath.row].pic
        cell.textAr.text = artTable[indexPath.row].name
        cell.subtextAr.text = artTable[indexPath.row].author
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ARViewController:  AVCaptureVideoDataOutputSampleBufferDelegate{
    func setupAVCapture(){
        session.sessionPreset = AVCaptureSessionPresetHigh
        guard let device = AVCaptureDevice
            .defaultDevice(withDeviceType: .builtInWideAngleCamera,
                           mediaType: AVMediaTypeVideo,
                           position: .back) else{
                            return
        }
        captureDevice = device
        beginSession()
    }
    
    func beginSession(){
        var err : NSError? = nil
        var deviceInput:AVCaptureDeviceInput?
        do {
            deviceInput = try AVCaptureDeviceInput(device: captureDevice)
        } catch let error as NSError {
            err = error
            deviceInput = nil
        }
        if err != nil {
            print("error: \(err?.localizedDescription)");
        }
        if self.session.canAddInput(deviceInput){
            self.session.addInput(deviceInput);
        }
        
        videoDataOutput = AVCaptureVideoDataOutput()
        videoDataOutput.alwaysDiscardsLateVideoFrames=true
        videoDataOutputQueue = DispatchQueue(label: "VideoDataOutputQueue")
        videoDataOutput.setSampleBufferDelegate(self, queue:self.videoDataOutputQueue)
        if session.canAddOutput(self.videoDataOutput){
            session.addOutput(self.videoDataOutput)
        }
        videoDataOutput.connection(withMediaType: AVMediaTypeVideo).isEnabled = true
        
        self.previewLayer = AVCaptureVideoPreviewLayer(session: self.session)
        self.previewLayer.videoGravity = AVLayerVideoGravityResize
        
        let rootLayer :CALayer = self.previewView.layer
        rootLayer.masksToBounds = true
        print(rootLayer.bounds)
        print(previewLayer)
        let screenWidth = UIScreen.main.bounds.size.width
        let screenHeight = UIScreen.main.bounds.size.height
        print (screenWidth)
        print (screenHeight)
        print ("ciao \(self.view.frame.origin.y)")
        print (self.view.frame.origin)
        //rootlayer.bounds
        self.previewLayer.frame = self.view.bounds 
        rootLayer.addSublayer(self.previewLayer)
        session.startRunning()
    }
    
    func captureOutput(_ captureOutput: AVCaptureOutput!,
                       didOutputSampleBuffer sampleBuffer: CMSampleBuffer!,
                       from connection: AVCaptureConnection!) {
        // do stuff here
    }
    
    // clean up AVCapture
    func stopCamera(){
        session.stopRunning()
    }
    
}
extension Array where Element: Equatable {
    
    // Remove first collection element that is equal to the given `object`:
    mutating func remove(object: Element) {
        if let index = index(of: object) {
            remove(at: index)
        }
    }
}
