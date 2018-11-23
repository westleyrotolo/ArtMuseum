//
//  MapViewController.swift
//  artmuseum
//
//  Created by Westley Rotolo on 19/06/17.
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit
class MapViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    let initialLocation = CLLocation(latitude:48.860294, longitude: 2.338629)
    let regionRadius: CLLocationDistance = 1000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                  regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        centerMapOnLocation(location: initialLocation)
        let annotation = MKPointAnnotation()
        
        let loc : CLLocationCoordinate2D  = CLLocationCoordinate2D(latitude: 48.860294, longitude: 2.338629)
        annotation.coordinate = loc
        annotation.title = "Louvre Mouseum"
        annotation.subtitle = "Art Museum"
       
        mapView.addAnnotation(annotation)
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var titles = ["Drive","Museum Map"]
    var images = [#imageLiteral(resourceName: "navigator"),#imageLiteral(resourceName: "map")]
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mapCell", for: indexPath)

        
        cell.imageView?.image = images[indexPath.row]
        cell.textLabel?.text = titles[indexPath.row]
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (indexPath.row==0){
            //let url = "http://maps.apple.com/maps?saddr=\(from.latitude),\(from.longitude)&daddr=48.860294,2.338629"
            //UIApplication.shared.openURL(URL(string:url)!)
            tableView.deselectRow(at: indexPath, animated: true)
            let coordinate = CLLocationCoordinate2DMake(48.860294,2.338629)
            let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate, addressDictionary:nil))
            mapItem.name = "Louvre Museum"
            mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving])
        }
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
