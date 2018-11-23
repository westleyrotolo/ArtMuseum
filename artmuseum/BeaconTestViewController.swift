//
//  BeaconTestViewController.swift
//  artmuseum
//
//  Created by Westley Rotolo on 19/06/17.
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//

import CoreLocation
class BeaconTestViewController: UIViewController, CLLocationManagerDelegate {
    @IBOutlet weak var proximityUUIDLabel: UILabel!
    @IBOutlet weak var iBeaconFoundLabel: UILabel!
    @IBOutlet weak var majorLabel: UILabel!
    @IBOutlet weak var minorLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var rssiLabel: UILabel!
    @IBOutlet weak var accuracyLabel: UILabel!
 
    var locationManager : CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        locationManager = CLLocationManager.init()
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        startScanningForBeaconRegion(beaconRegion: getBeaconRegion())
    }
    
    func getBeaconRegion() -> CLBeaconRegion {
        let beaconRegion = CLBeaconRegion.init(proximityUUID: UUID.init(uuidString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D")!,identifier: "8f34c9e8c84629201f5a080a82788406")
        return beaconRegion
    }
    
    func startScanningForBeaconRegion(beaconRegion: CLBeaconRegion) {
        print(beaconRegion)
        locationManager.startMonitoring(for: beaconRegion)
        locationManager.startRangingBeacons(in: beaconRegion)
    }
    // Delegate Methods
    func locationManager(_ manager: CLLocationManager, didRangeBeacons beacons: [CLBeacon], in region: CLBeaconRegion) {
        let beacon = beacons.last
        for b in beacons{
            print ("identifiry: \(b.proximityUUID) major: \(b.major) minor: \(b.minor) ")
        }
        
        if beacons.count > 0 {
            iBeaconFoundLabel.text = "Yes"
            proximityUUIDLabel.text = beacon?.proximityUUID.uuidString
            majorLabel.text = beacon?.major.stringValue
            minorLabel.text = beacon?.minor.stringValue
            accuracyLabel.text = String(describing: beacon?.accuracy)
            if beacon?.proximity == CLProximity.unknown {
                distanceLabel.text = "Unknown Proximity"
            } else if beacon?.proximity == CLProximity.immediate {
                distanceLabel.text = "Immediate Proximity"
            } else if beacon?.proximity == CLProximity.near {
                distanceLabel.text = "Near Proximity"
            } else if beacon?.proximity == CLProximity.far {
                distanceLabel.text = "Far Proximity"
            }
            rssiLabel.text = String(describing: beacon?.rssi)
        } else {
            iBeaconFoundLabel.text = "No"
            proximityUUIDLabel.text = ""
            majorLabel.text = ""
            minorLabel.text = ""
            accuracyLabel.text = ""
            distanceLabel.text = ""
            rssiLabel.text = ""
        }
        
        print("Ranging")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
