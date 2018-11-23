//
//  TiketsViewController.swift
//  artmuseum
//
//  Created by Westley Rotolo on 23/06/17.
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//

import UIKit

class TiketsViewController: UIViewController, UICollectionViewDataSource{
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var buttonClose: UIButton!

    @IBAction func button_Close(_ sender: Any) {
        dismiss()
    }
    @IBOutlet weak var viewTickets: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        tickets.append(("Regular Price", "Only museum entry", "8.00€"))
        tickets.append(("Reduced Price", "Only museum entry, for student", "4.00€"))
        tickets.append(("Free Price", "Only museum entry, for senior (65+)", "0.00€"))
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func dismiss() {
        self.dismiss(animated: true, completion: nil)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    @IBInspectable var cornerRadius: CGFloat = 2
    @IBInspectable var shadowOffsetWidth: Int = 0
    @IBInspectable var shadowOffsetHeight: Int = 1
    @IBInspectable var shadowColor: UIColor? = UIColor.black
    @IBInspectable var shadowOpacity: Float = 0.5
    func roundView(obj: UIView){
        obj.layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetWidth)
        obj.layer.cornerRadius = 10
        obj.layer.shadowColor = shadowColor?.cgColor
        obj.layer.masksToBounds = false
        obj.layer.shadowOpacity = shadowOpacity
    }
    var tickets : [(String,String,String)] = [(String, String, String)]()
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let identifier = "UICollectionViewCell"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! TicketViewCell
        cell.labelTipo.text = tickets[indexPath.row].0
        cell.labelDescr.text = tickets[indexPath.row].1
        cell.labelPrezzo.text = tickets[indexPath.row].2
        roundView(obj: cell.viewCell)
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
