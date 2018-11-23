//
//  NewsViewController.swift
//  artmuseum
//
//  Created by Westley Rotolo on 24/06/17.
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if (segue.identifier == "showNews"){
            let vc = segue.destination as! NewsDetailViewController
            let myIndexPath = self.tableView.indexPathForSelectedRow!
            let row = myIndexPath.row
            
            vc.n = AppDelegate.museum.news![row]
            self.tableView.deselectRow(at: myIndexPath, animated: true)
            
        }
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AppDelegate.museum.news!.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "newsCell")
        cell.accessoryType = .disclosureIndicator
        cell.textLabel?.text = AppDelegate.museum.news![indexPath.row].title
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMM, yyyy"
        let data : String = dateFormatter.string(from: AppDelegate.museum.news![indexPath.row].date)
        cell.detailTextLabel?.text = data
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "showNews", sender: tableView)
    }
    

}
