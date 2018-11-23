//
//  SecondViewController.swift
//  artmuseum
//
//  Created by Westley Rotolo on 15/06/17.
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//

import UIKit
import ImageSlideshow
class SecondViewController: UIViewController {
    
    @IBOutlet weak var viewButtons: UIView!
    let localSource = [ImageSource(imageString: "i1")!, ImageSource(imageString: "i2")!, ImageSource(imageString: "i3")!]
    @IBInspectable var cornerRadius: CGFloat = 5
    @IBInspectable var shadowOffsetWidth: Int = 0
    @IBInspectable var shadowOffsetHeight: Int = 3
    @IBInspectable var shadowColor: UIColor? = UIColor.black
    @IBInspectable var shadowOpacity: Float = 0.2
    @IBOutlet weak var imageSlideShow: ImageSlideshow!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.title = AppDelegate.museum.name
        var isource : [ImageSource] = [ImageSource]()
        for x in AppDelegate.museum.imgs!{
            isource.append(ImageSource(image: x))
        }
        imageSlideShow.setImageInputs(isource)
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(SecondViewController.didTap))
        imageSlideShow.addGestureRecognizer(recognizer)
        roundView(obj: viewButtons)
        adjustImageAndTitleOffsetsForButton(button: buttonNews)
        adjustImageAndTitleOffsetsForButton(button: buttonEvents)
        adjustImageAndTitleOffsetsForButton(button: buttonInfo)
        adjustImageAndTitleOffsetsForButton(button: buttonTickets)
        adjustImageAndTitleOffsetsForButton(button: buttonProfile)
        adjustImageAndTitleOffsetsForButton(button: buttonMap)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        imageSlideShow.slideshowInterval = 3.5
        imageSlideShow.pageControlPosition = PageControlPosition.hidden
        imageSlideShow.pageControl.currentPageIndicatorTintColor = UIColor.black
        imageSlideShow.pageControl.pageIndicatorTintColor = UIColor.lightGray
        imageSlideShow.contentScaleMode = UIViewContentMode.scaleAspectFill
    }
    func roundView(obj: UIView){
        obj.layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetWidth)
        obj.layer.cornerRadius = cornerRadius
        obj.layer.shadowColor = shadowColor?.cgColor
        obj.layer.masksToBounds = false
        obj.layer.shadowOpacity = shadowOpacity
    }
    @IBOutlet weak var buttonNews: UIButton!
    @IBOutlet weak var buttonEvents: UIButton!
    @IBOutlet weak var buttonInfo: UIButton!
    @IBOutlet weak var buttonTickets: UIButton!
    @IBOutlet weak var buttonProfile: UIButton!
    @IBOutlet weak var buttonMap: UIButton!
    
    
    func didTap() {
        let fullScreenController = imageSlideShow.presentFullScreenController(from: self)
        // set the activity indicator for full screen controller (skipping the line will show no activity indicator)
        fullScreenController.slideshow.activityIndicator = DefaultActivityIndicator(style: .white, color: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    private func adjustImageAndTitleOffsetsForButton (button: UIButton) {
        let spacing: CGFloat = 4.0
        let imageSize = button.imageView!.frame.size
        
        let titleSize = button.titleLabel!.frame.size
        //TOP LEFT BOTTOM RIGHT    
        button.imageEdgeInsets = UIEdgeInsetsMake(-(titleSize.height + spacing), (button.bounds.size.width/2)-imageSize.width/2, 0, 0)
        
        button.titleEdgeInsets = UIEdgeInsetsMake(0, (-imageSize.width) - (titleSize.width/2) + (button.bounds.size.width/2) , -(imageSize.height + spacing), 0)
        print(titleSize.width)
        print("w \(titleSize.width/2)")
        print(button.bounds.size.width)
        
     }

}

/*
 infoButton.layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetWidth)
 infoButton.layer.cornerRadius = cornerRadius
 infoButton.layer.shadowColor = shadowColor?.cgColor
 infoButton.layer.masksToBounds = false
 infoButton.layer.shadowOpacity = shadowOpacity
 eventiButton.layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetWidth)
 eventiButton.layer.cornerRadius = cornerRadius
 eventiButton.layer.shadowColor = shadowColor?.cgColor
 eventiButton.layer.masksToBounds = false
 eventiButton.layer.shadowOpacity = shadowOpacity
 ticketButton.layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetWidth)
 ticketButton.layer.cornerRadius = cornerRadius
 ticketButton.layer.shadowColor = shadowColor?.cgColor
 ticketButton.layer.masksToBounds = false
 ticketButton.layer.shadowOpacity = shadowOpacity
 
 */
