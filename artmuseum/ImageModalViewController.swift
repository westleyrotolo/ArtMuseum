 //
//  ImageModalViewController.swift
//  artmuseum
//
//  Created by Westley Rotolo on 25/06/17.
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//

import UIKit

class ImageModalViewController: UIViewController  {

    var is3DTouchAvailable: Bool {
        return view.traitCollection.forceTouchCapability == .available
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
        
        if let touch = touches.first {
            
            guard is3DTouchAvailable else { return }
            
            let maximumForce = touch.maximumPossibleForce
            let force = touch.force
            let normalizedForce = (force / maximumForce);
            print ("force: \(force), max: \(maximumForce), normalize: \(normalizedForce)")

        }
    }
    var art : Artwork = Artwork("", "", "", "", "", "")
    override func viewDidLoad() {
        super.viewDidLoad()
        nameArt.text = art.title
        roomLabel.text = art.room
        imageView.image = UIImage(named: art.id)
        authorLabel.text = art.author
        
        let forceGesture = ForceGestureRecognizer()
        forceGesture.addTarget(self, action: #selector(imagePressed(_:)))
        imageView.addGestureRecognizer(forceGesture)
        imageView.isUserInteractionEnabled = true
        
    }
    override func viewDidAppear(_ animated: Bool) {
        
        initialFrame = imageView.frame
    }
    var initialFrame: CGRect = CGRect.zero
    

    func imagePressed(_ sender: ForceGestureRecognizer) {
        let point = sender.location(in: self.view)
        let imageCoordPoint = CGPoint(x: point.x - initialFrame.origin.x, y: point.y - initialFrame.origin.y)
      
        if sender.forceValue > 1.4
        {
        var xValue = max(0, imageCoordPoint.x / initialFrame.size.width)
        var yValue = max(0, imageCoordPoint.y / initialFrame.size.height)
        
        xValue = min(xValue, 1)
        yValue = min(yValue, 1)
        
        let anchor = CGPoint(x:xValue, y:yValue)
        imageView.layer.anchorPoint = anchor
        var _forceValue = max(1, sender.forceValue)
        let forceValue = CGFloat(round(1000*_forceValue)/1000)
        imageView.layer.transform = CATransform3DMakeScale(forceValue, forceValue, 1)
        }
        if sender.state == .ended{
            imageView.layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
            imageView.layer.transform = CATransform3DIdentity
        }
    }
    @IBOutlet weak var imageView: UIImageView!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var roomLabel: UILabel!
   @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var nameArt: UILabel!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
