//
//  MuseumsViewController.swift
//  artmuseum
//
//  Created by Westley Rotolo on 22/06/17.
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//

import UIKit

class MuseumsViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        viewConfigrations()
        collectionView.delegate = self
        collectionView.dataSource = self
    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        updateCellsLayout()
    }
    private func viewConfigrations() {
        
        collectionView.register(UINib(nibName: "MuseumCell", bundle: nil), forCellWithReuseIdentifier: "MuseumCell")
        collectionView.contentInset = UIEdgeInsetsMake(0, 30, 0, 30)
        collectionView.decelerationRate = UIScrollViewDecelerationRateFast
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
       /* if segue.identifier == "show" {
            var indexPath = self.collectionView.indexPathsForSelectedItems?.first
            let selectedRow = indexPath?.row
            let showVC = segue.destination as! SecondViewController
        }
        */

    }
 

    
    func updateCellsLayout()  {
        
        let centerX = collectionView.contentOffset.x + (collectionView.frame.size.width)/2
        for cell in collectionView.visibleCells {
            
            var offsetX = centerX - cell.center.x
            if offsetX < 0 {
                offsetX *= -1
            }
            
            cell.transform = CGAffineTransform.identity
            if offsetX > 50 {
                
                let offsetPercentage = (offsetX - 50) / view.bounds.width
                var scaleX = 1-offsetPercentage
                if scaleX < 0.8 {
                    scaleX = 0.8
                }
                
                cell.transform = CGAffineTransform(scaleX: scaleX, y: scaleX)
            }
        }
    }
    
}






//  Collection View FlowLayout Delegate & Data Source


extension MuseumsViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return AppDelegate.Museums.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MuseumCell", for: indexPath) as! MuseumCell
        cell.imageMuseum.image =   AppDelegate.Museums[indexPath.row].img
        cell.nameMuseum.text = AppDelegate.Museums[indexPath.row].name
        cell.cityMuseum.text = AppDelegate.Museums[indexPath.row].city
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        var cellSize: CGSize = collectionView.bounds.size
        
        cellSize.width -= collectionView.contentInset.left * 2
        cellSize.width -= collectionView.contentInset.right * 2
        cellSize.height = cellSize.width/3*4
        
        return cellSize
    }
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
        print("NOW DISPLAYING: \(indexPath.row)")
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
      //  AppDelegate.AllReaction
        AppDelegate.museum = AppDelegate.Museums[indexPath.row]
        let e : InitialEvents = InitialEvents()
        AppDelegate.museum.addEvents(events: e.events)
        let n : InitialNews = InitialNews()
        AppDelegate.museum.addNews(news: n.news)
        if AppDelegate.museum.name == "Uffizi Gallery" {
            let i1 : InitialData = InitialData()
            AppDelegate.museum.addArtwork(artworks: i1.artWorks)
        } else if AppDelegate.museum.name == "Louvre Museum" {
            let i2 : InitialData2 = InitialData2()
            AppDelegate.museum.addArtwork(artworks: i2.artWorks)
        } else if AppDelegate.museum.name == "Metropolitan Museum of Art" {
            let i3 : InitialData3 = InitialData3()
            AppDelegate.museum.addArtwork(artworks: i3.artWorks)
        } else {

            let alert = UIAlertController(title:"Coming soon", message: "This museum coming soon, sorry. Stay tuned", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return
        }
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "homeStoryboard") as! UINavigationController
        let tb : UITabBarController = vc.topViewController! as! UITabBarController
        
        tb.selectedIndex = 1
        self.present(vc, animated: true, completion: nil)
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        updateCellsLayout()
    }
}
