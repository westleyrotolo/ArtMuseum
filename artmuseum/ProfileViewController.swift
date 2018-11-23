//
//  ProfileViewController.swift
//  artmuseum
//
//  Created by Westley Rotolo on 16/06/17.
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//

import UIKit
import CoreData
class ProfileViewController: UIViewController, UITableViewDataSource, MyCustomCellDelegator {

    
    @IBOutlet weak var numberCoin: UILabel!
    @IBOutlet weak var tableView: UITableView!
    static var categories : [String] = [String]()
    @IBInspectable var cornerRadius: CGFloat = 5
    @IBInspectable var shadowOffsetWidth: Int = 0
    @IBInspectable var shadowOffsetHeight: Int = 3
    @IBInspectable var shadowColor: UIColor? = UIColor.black
    @IBInspectable var shadowOpacity: Float = 0.2

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var imageProfile: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        roundImage(img: imageProfile)
        numberCoin.text = "\(AppDelegate.coins) coins"
    }
    override func viewWillAppear(_ animated: Bool) {
        fetchResult()
        ProfileViewController.categories = Array(Set(AppDelegate.AllReactions.map { $0.museum }))
        print(ProfileViewController.categories.count)
    }
    
    override func viewDidAppear(_ animated: Bool) {
    }
    func fetchResult(){
        AppDelegate.AllReactions.removeAll()  
       guard let appDelegate =
            UIApplication.shared.delegate as? AppDelegate else {
                return
        }
        let managedContext = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Reactions")
        do {
            let x = try managedContext.fetch(fetchRequest)
            print("COREDATA: \(x.count)")
            for i in x as [NSManagedObject]{
                let s = i.value(forKey: "reaction") as! String
                let ss = i.value(forKey: "idArtwork") as! String
                let sss = i.value(forKey: "museum") as! String
                let ssss = i.value(forKey: "name") as! String
                print("COREDATA: \(s)")
                print("COREDATA: \(ss)")
                let reaction: MyReactions = MyReactions(r: s, i: ss, m: sss, n: ssss)
                AppDelegate.AllReactions.append(reaction)
            }
            
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
        
    }
       override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func roundImage(img: UIImageView){
      //  self.view.layoutIfNeeded()
        img.layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetWidth)
        img.layer.cornerRadius = img.frame.width / 2
        img.layer.shadowColor = shadowColor?.cgColor
        img.layer.masksToBounds = false
        img.layer.shadowOpacity = shadowOpacity
        img.clipsToBounds = true
    }
    //Table View Implementation
    func numberOfSections(in tableView: UITableView) -> Int {
        return ProfileViewController.categories.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ProfileViewController.categories[section]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CategoryRow
        cell.tag = indexPath.section
        cell.delegate = self
        return cell
    }
    func callSegueFromCell(myData dataobject: MyReactions) {
        //try not to send self, just to avoid retain cycles(depends on how you handle the code on the next controller)
        tempArt = dataobject as! MyReactions
        self.performSegue(withIdentifier: "showImage", sender:dataobject )
     }
    
    // MARK: - Navigation
    var tempArt : MyReactions = MyReactions(r: "", i: "", m: "", n: "")
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "showImage"{
            var id : MyReactions = sender as! MyReactions
            let vc = segue.destination as! ImageModalViewController
            
            //   init(_ title: String, _ author: String, _ text: String, _ id: String, _ year: String,_ room: String) {
            
            vc.art  = Artwork(id.name,id.museum,"",id.idArt,"",id.reaction)
            tempArt = MyReactions(r: "", i: "", m: "", n: "")
        }
        
    }
    

}
