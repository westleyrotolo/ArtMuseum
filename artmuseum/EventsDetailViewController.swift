//
//  EventsDetailViewController.swift
//  artmuseum
//
//  Created by Westley Rotolo on 24/06/17.
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//

import UIKit

class EventsDetailViewController: UIViewController {
    
    @IBOutlet weak var imageEvents: UIImageView!
    @IBOutlet weak var textEvent: UILabel!
    @IBOutlet weak var dateEvents: UILabel!
    @IBOutlet weak var titleEvents: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageEvents.image = e.img
        titleEvents.text = e.title
        textEvent.text = "\n\n \(e.notes)"
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMM, yyyy"
        let data : String = dateFormatter.string(from: e.start_date)
        dateEvents.text = data
        // Do any additional setup after loading the view.
    }
    var e : Events = Events(title: "", notes: "", img: #imageLiteral(resourceName: "event"), start_date: Date(timeIntervalSince1970: 0.0))
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
