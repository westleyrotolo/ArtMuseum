//
//  CategoryRow.swift
//  artmuseum
//
//  Created by Westley Rotolo on 17/06/17.
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//

import UIKit

class CategoryRow: UITableViewCell {

    var reacts : [MyReactions] = [MyReactions]()
     override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    var delegate:MyCustomCellDelegator!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBInspectable var cornerRadius: CGFloat = 5
    
    @IBInspectable var shadowOffsetWidth: Int = 0
    @IBInspectable var shadowOffsetHeight: Int = 3
    @IBInspectable var shadowColor: UIColor? = UIColor.black
    @IBInspectable var shadowOpacity: Float = 0.5

}

extension CategoryRow: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var count: Int = 0
        print("TAG: \(self.tag)")
        var nameSection: String = ProfileViewController.categories[self.tag]
        for x in AppDelegate.AllReactions  {
            if (nameSection == x.museum){
                reacts.append(x)
                count = count + 1
            }
        }
        
        return count
    }
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let image : UIImage = UIImage(named :reacts[indexPath.row].idArt)!
        let height = image.size.height
        let width = image.size.width
        let newheight = collectionView.bounds.size.height - 4
        let fact = height/newheight
        let newwidth = width/fact
        return CGSize(width: newwidth, height: newheight)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let mydata = reacts[indexPath.row]
        if(self.delegate != nil){ //Just to be safe.
            self.delegate.callSegueFromCell(myData: mydata as! MyReactions)
        }
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "artCell", for: indexPath) as! ReactionCollectionViewCell
        cell.view.layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetWidth)
        cell.view.layer.cornerRadius = cornerRadius
        cell.view.layer.shadowColor = shadowColor?.cgColor
        cell.view.layer.masksToBounds = false
        cell.view.layer.shadowOpacity = shadowOpacity
       
        cell.imageArt.image = UIImage(named:reacts[indexPath.row].idArt)
        cell.nameArt.text = reacts[indexPath.row].name
        cell.reactionArt.text = reacts[indexPath.row].reaction
        return cell
    }
}
protocol MyCustomCellDelegator {
    func callSegueFromCell(myData dataobject: MyReactions)
}
