//
//  CoinViewController.swift
//  artmuseum
//
//  Created by Westley Rotolo on 24/06/17.
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//

import UIKit

class CoinViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var coupons : [Coupon] = [Coupon]()
    @IBOutlet weak var tableView: UITableView!
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        let ip : InitialPrize = InitialPrize()
        coupons = ip.list
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return coupons.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.accessoryType = .disclosureIndicator
       // cell.imageView?.contentMode = UIViewContentMode.center
        //cell.imageView?.frame
        cell.imageView?.autoresizesSubviews = false
 //       cell.imageView?.autoresizingMask = UIViewAutoresizing.
        
        cell.imageView?.draw(CGRect(x: 0, y:0, width: 30, height: 30));
       // cell.imageView?.frame = CGRect(x: 0, y:0, width: 30, height: 30);
        cell.imageView?.image = #imageLiteral(resourceName: "coin")
        cell.textLabel?.text = coupons[indexPath.row].prize
        cell.detailTextLabel?.text = "\(coupons[indexPath.row].coin) coins"
        return cell

    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var coupon : Coupon = coupons[indexPath.row]
        if Int(coupon.coin)!<AppDelegate.coins{
            let alert = UIAlertController(title: coupon.prize, message: "Save the code XXXX-XXXX-XXXX-XXXX to  cash your prize", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Cash", style: UIAlertActionStyle.default, handler: {(alert: UIAlertAction!) in self.buy(coin: Int(coupon.coin)!)}))
            alert.addAction(UIAlertAction(title:"Undo", style:UIAlertActionStyle.destructive, handler: nil))
            self.present(alert, animated: true, completion: nil)
 } else {
            let alert = UIAlertController(title: coupon.prize, message: "Not enough coins", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    func buy(coin: Int){
        AppDelegate.coins = AppDelegate.coins - coin
        UserDefaults.standard.set(AppDelegate.coins, forKey: "coins");
    }
    @IBAction override func unwind(for unwindSegue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController) {
        
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
