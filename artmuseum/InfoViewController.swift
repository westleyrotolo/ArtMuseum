//
//  InfoViewController.swift
//  artmuseum
//
//  Created by Westley Rotolo on 23/06/17.
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    @IBOutlet weak var imageInfo: UIImageView!
    @IBOutlet weak var labelInfo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelInfo.text = "\n\n\(AppDelegate.museum.text!)"
        imageInfo.image = AppDelegate.museum.img
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
