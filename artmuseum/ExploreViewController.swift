//
//  ExploreViewController.swift
//  artmuseum
//
//  Created by Westley Rotolo on 15/06/17.
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//

import UIKit

class ExploreViewController: UIViewController, UICollectionViewDataSource, customLayoutDelegate  {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        if collectionView.collectionViewLayout is customLayout{
            let layout = customLayout()
            layout.delegate = self
            layout.columnCount = 2
            layout.minimumLineSpacing=10
            layout.minimumInteritemSpacing = 10
            
            collectionView.collectionViewLayout = layout
            collectionView.reloadData()
        }

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
        if (segue.identifier == "showImage"){
            let vc = segue.destination as! ImageModalViewController
            let myIndexPath = self.collectionView.indexPathsForSelectedItems!
            let indexPath : NSIndexPath = myIndexPath[0] as NSIndexPath
            let rowIndex = indexPath.row
            print("indexpath \(rowIndex)")
            vc.art = AppDelegate.museum.artworks![rowIndex]
         //   self.collectionView.deselectItem(at: Index, animated: true)
        }
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print(AppDelegate.museum.artworks!.count)
        return AppDelegate.museum.artworks!.count
        
    }
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let img : UIImage = UIImage(named:AppDelegate.museum.artworks![indexPath.row].id)!
        let height = img.size.height
        let width = img.size.width
        print ("w: \(width)")
        
       
        let newwidth = (collectionView.bounds.size.width-32)/2
        print ("w: \(newwidth)")
        let fact = width/newwidth
        print ("w: \(fact)")
        let newheight = height/fact
        print ("w: \(newheight)")
        return CGSize(width: newwidth, height: newheight)
    }
    @IBInspectable var cornerRadius: CGFloat = 5
    
    @IBInspectable var shadowOffsetWidth: Int = 0
    @IBInspectable var shadowOffsetHeight: Int = 3
    @IBInspectable var shadowColor: UIColor? = UIColor.black
    @IBInspectable var shadowOpacity: Float = 0.5
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let identifier = "UICollectionViewCell"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! imageCell
        cell.layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetWidth)
        cell.layer.cornerRadius = cornerRadius
        cell.layer.shadowColor = shadowColor?.cgColor
        cell.layer.masksToBounds = false
        cell.layer.shadowOpacity = shadowOpacity
        cell.imageView.clipsToBounds = true
        let img : UIImage = UIImage(named :AppDelegate.museum.artworks![indexPath.row].id)!
        cell.imageView.image =  img
        cell.imageView.backgroundColor = UIColor.black
        cell.imageAuthor.image = #imageLiteral(resourceName: "dv")
        cell.imageView.backgroundColor = UIColor.black
        cell.imageAuthor.layer.cornerRadius = 15
        cell.imageAuthor.layer.masksToBounds = false
        cell.imageAuthor.clipsToBounds = true
        cell.labelName.text = AppDelegate.museum.artworks![indexPath.row].title
        cell.labelLastName.text = AppDelegate.museum.artworks![indexPath.row].author
        
        return cell
        
    }
    
}

