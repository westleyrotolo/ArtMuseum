//
//  FirstViewController.swift
//  artmuseum
//
//  Created by Westley Rotolo on 15/06/17.
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//

import UIKit
import CoreLocation
class FirstViewController: UIViewController, UICollectionViewDataSource, customLayoutDelegate, UITableViewDelegate, UITableViewDataSource, CLLocationManagerDelegate{
    
    @IBOutlet weak var viewRoom: UIView!
    @IBOutlet weak var imageBeacon: UIImageView!
    @IBOutlet weak var labelBeacon: UILabel!
    @IBOutlet weak var viewNear: UIView!
    var locationManager: CLLocationManager!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var collectionView: UICollectionView!
    var mydata : [Artwork] = [Artwork]()
    func roundView(obj: UIView){
        obj.layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetWidth)
        obj.layer.cornerRadius = 10
        obj.layer.shadowColor = shadowColor?.cgColor
        obj.layer.masksToBounds = false
        obj.layer.shadowOpacity = shadowOpacity
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        mydata.removeAll()
        for x in AppDelegate.museum.artworks!{
            if x.room == "Sala 1"{
                mydata.append(x)
            }
        }
        nearBeacon.append(Artwork("", "", "", "", "", ""))
        tableView.delegate = self
        tableView.dataSource = self
        collectionView.dataSource = self
        if collectionView.collectionViewLayout is customLayout{
            let layout = customLayout()
            layout.delegate = self
            layout.columnCount = 1
            layout.minimumLineSpacing=10
            layout.minimumInteritemSpacing = 10
            collectionView.collectionViewLayout = layout
            collectionView.reloadData()
        }
        locationManager = CLLocationManager()
        locationManager.delegate = self

        startScanningForBeaconRegion(beaconRegion: getBeaconRegion())
        roundView(obj: viewRoom)
        // Do any additional setup after loading the view, typically from a nib.
    }
    func getBeaconRegion() -> CLBeaconRegion {
        let beaconRegion = CLBeaconRegion.init(proximityUUID: UUID.init(uuidString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D")!, identifier: "8f34c9e8c84629201f5a080a82788406")
        return beaconRegion
    }
    
    func startScanningForBeaconRegion(beaconRegion: CLBeaconRegion) {
        print(beaconRegion)
        locationManager.startMonitoring(for: beaconRegion)
        locationManager.startRangingBeacons(in: beaconRegion)
        
        beaconRegion.notifyOnEntry = true
        beaconRegion.notifyOnExit = true
        beaconRegion.notifyEntryStateOnDisplay = true
    }
    var nearBeacon : [Artwork] = [Artwork]()
    func locationManager(_ manager: CLLocationManager, didRangeBeacons beacons: [CLBeacon], in region: CLBeaconRegion) {
        if beacons.count>0 && AppDelegate.museum.name == "Uffizi Gallery"{
            if collectionView.isHidden == true {
                
                labelBeacon.isHidden = true
                imageBeacon.isHidden = true
                collectionView.isHidden  = false
                viewRoom.isHidden = false
            }
        } else {
            
            labelBeacon.isHidden = false
            imageBeacon.isHidden = false
            collectionView.isHidden  = true
            viewRoom.isHidden = true
        }
        
        //major: 21413 minor: 26588 mint
        //major: 35887 minor: 30609 viola
        //major: 27161 minor: 23763 cyan
        
        NSLog("%@", "didRangeBeacons \(beacons.count)")
        print("region")
        var indexPath =  IndexPath(row: 0, section:0)
      /*  if nearBeacon.count>0{
           var rindexPath =  IndexPath(row: 1, section:0)
            tableView.beginUpdates()
            tableView.deleteRows(at: [rindexPath], with: .none)
            nearBeacon.removeAll()
            tableView.endUpdates()
        }*/
        var color: String = "Unknow"
        for beacon in beacons {
            if beacon.proximity == .immediate{
                nearBeacon.removeAll()  
                if beacon.minor == 26588{
                    color = "mint"
                    nearBeacon.append(AppDelegate.museum.artworks![0])
                } else if beacon.minor == 30609 {
                    nearBeacon.append(AppDelegate.museum.artworks![1])
                    color="viola"
                } else if beacon.minor == 23763 {
                    nearBeacon.append(AppDelegate.museum.artworks![2])
                    color = "cyan"
                }
                //  notifica(color: color)
            }
           
        }
        if color != "Unknow" {
            tableView.beginUpdates()
            tableView.reloadRows(at: [indexPath], with: .none)
            tableView.endUpdates()
            
            viewNear.isHidden = false
        } else {
            viewNear.isHidden = true
        }
        //tableView.endUpdates()
        tableView.reloadData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mydata.count
    }
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let image : UIImage = UIImage(named :mydata[indexPath.row].id)!
        let height = image.size.height
        let width = image.size.width
        print ("w: \(width)")
        let newwidth = collectionView.bounds.size.width - 4
        print("colletioview width: \(collectionView.bounds.size.width)")
        print("view width \(UIScreen.main.bounds.size.width)")
       // let newwidth = ( UIScreen.main.bounds.size.width-48)
        print ("w: \(newwidth)")
        let fact = width/newwidth
        print ("w: \(fact)")
        let newheight = height/fact
        print ("w: \(newheight)")
        return CGSize(width: newwidth, height: newheight)
    }
    @IBInspectable var cornerRadius: CGFloat = 2    
    @IBInspectable var shadowOffsetWidth: Int = 0
    @IBInspectable var shadowOffsetHeight: Int = 3
    @IBInspectable var shadowColor: UIColor? = UIColor.black
    @IBInspectable var shadowOpacity: Float = 0.5
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let identifier = "UICollectionViewCell"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! imageCell
        cell.layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetWidth)
        cell.layer.cornerRadius = cornerRadius
        cell.layer.shadowColor = shadowColor?.cgColor
        cell.layer.masksToBounds = false
        cell.layer.shadowOpacity = shadowOpacity
        cell.imageView.clipsToBounds = true
        let img : UIImage = UIImage(named :AppDelegate.museum.artworks![indexPath.row].id)!
        cell.imageView.image =  img
        cell.imageView.backgroundColor = UIColor.black
        cell.imageAuthor.image = #imageLiteral(resourceName: "dv")
        cell.imageView.backgroundColor = UIColor.black
        cell.imageAuthor.layer.cornerRadius = 15
        cell.imageAuthor.layer.masksToBounds = false
        cell.imageAuthor.clipsToBounds = true
        cell.labelName.text = AppDelegate.museum.artworks![indexPath.row].title
        cell.labelLastName.text = AppDelegate.museum.artworks![indexPath.row].author
        return cell
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "nearCell")
        cell.accessoryType = .disclosureIndicator
        cell.textLabel?.textColor = UIColor.white
        cell.detailTextLabel?.textColor = UIColor.white
        cell.textLabel?.font = UIFont.preferredFont(forTextStyle: .title3)
        cell.detailTextLabel?.font = UIFont.preferredFont(forTextStyle: .subheadline)
        cell.textLabel?.text = nearBeacon[indexPath.row].title
        cell.backgroundColor = UIColor.clear
        cell.detailTextLabel?.text = "found near you"
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(" COUNT: \(nearBeacon.count)")
        return nearBeacon.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "nearShow", sender: tableView)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
        if segue.identifier=="collectionShow"{
            let detailView = segue.destination as! DetailViewController
            let myIndexPath = self.collectionView.indexPathsForSelectedItems!
            let indexPath : NSIndexPath = myIndexPath[0] as NSIndexPath
            let rowIndex = indexPath.row
            detailView.art=AppDelegate.museum.artworks![rowIndex]
        } else if segue.identifier=="nearShow"{
            let detailView = segue.destination as! DetailViewController
            let myIndexPath = self.tableView.indexPathForSelectedRow!
            let rowIndex = myIndexPath.row
            detailView.art=AppDelegate.museum.artworks![rowIndex]
            
        }
        
    }
    
}
