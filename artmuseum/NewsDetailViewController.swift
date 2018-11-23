//
//  NewsDetailViewController.swift
//  artmuseum
//
//  Created by Westley Rotolo on 24/06/17.
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//

import UIKit

class NewsDetailViewController: UIViewController {
    @IBOutlet weak var imageNews: UIImageView!
    @IBOutlet weak var dateNews: UILabel!

    @IBOutlet weak var textNews: UILabel!
   
    @IBOutlet weak var titleNews: UILabel!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        imageNews.image = n.img
        titleNews.text = n.title
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMM, yyyy"
        let data : String = dateFormatter.string(from: n.date)
        
        dateNews.text = data
        textNews.text = "\n\n \(n.notes)"
        // Do any additional setup after loading the view.
    }
    var n : News = News(title: "", notes: "", img: #imageLiteral(resourceName: "news"), date: Date(timeIntervalSince1970: 0))
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
