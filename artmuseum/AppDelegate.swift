//
//  AppDelegate.swift
//  artmuseum
//
//  Created by Westley Rotolo on 15/06/17.
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//

import UIKit
import CoreLocation
import UserNotifications
import UserNotificationsUI
import CoreData
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, CLLocationManagerDelegate {
    
    static var coins: Int = 0 
    lazy var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
         */
        let container = NSPersistentContainer(name: "UserModel")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    // MARK: - Core Data Saving support
    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }

    static var Museums : [Museum] = [Museum]()
    static var museum : Museum = Museum()
    static var AllReactions : [MyReactions] = [MyReactions]()
    var window: UIWindow?
    var locationManager: CLLocationManager!
    let requestIdentifier = "SampleRequest"
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
    
        self.window!.tintColor = UIColor.black
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.pausesLocationUpdatesAutomatically = false
        locationManager.allowsBackgroundLocationUpdates = true
        locationManager.requestAlwaysAuthorization()
        startScanningForBeaconRegion(beaconRegion: getBeaconRegion())
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, ])
        { (success, error) in
            if success {
                print("success")
            } else {
            print("error")
            }
        }
        let m : InitialMuseumData = InitialMuseumData()
        AppDelegate.Museums = m.museums
        AppDelegate.coins =  UserDefaults.standard.integer(forKey: "coins") 
        return true
    }
    
    
    func getBeaconRegion() -> CLBeaconRegion {
        let beaconRegion = CLBeaconRegion.init(proximityUUID: UUID.init(uuidString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D")!, identifier: "8f34c9e8c84629201f5a080a82788406")
        return beaconRegion
    }
    
    func startScanningForBeaconRegion(beaconRegion: CLBeaconRegion) {
        print(beaconRegion)
        locationManager.startMonitoring(for: beaconRegion)
        locationManager.startRangingBeacons(in: beaconRegion)
    
        beaconRegion.notifyOnEntry = true
        beaconRegion.notifyOnExit = true
        beaconRegion.notifyEntryStateOnDisplay = true
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if (locations.count>0){
        let loc = locations.last!
        print ("lat: \(loc.coordinate.latitude) lon: \(loc.coordinate.longitude)")
        }
    }
    func locationManager(_ manager: CLLocationManager, didRangeBeacons beacons: [CLBeacon], in region: CLBeaconRegion) {
        //major: 21413 minor: 26588 mint
        //major: 35887 minor: 30609 viola
        //major: 27161 minor: 23763 cyan
        NSLog("%@", "didRangeBeacons \(beacons.count)")
        print("region")
        for beacon in beacons {
            if beacon.proximity == .immediate{
                var color: String = "Unknow"
                if beacon.minor == 26588{
                    color = "mint"
                } else if beacon.minor == 30609 {
                    color="viola"
                } else if beacon.minor == 23763 {
                    color = "cyan"
                }
                notifica(color: color)
            }
        }
    }
    
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedAlways {
            if CLLocationManager.isMonitoringAvailable(for: CLBeaconRegion.self) {
                if CLLocationManager.isRangingAvailable() {
                    //CODE
                }
            }
        }
    }
    func locationManager(_ manager: CLLocationManager, didDetermineState state: CLRegionState, for region: CLRegion)
    {
                NSLog("%@", "DeterminateState")
        startScanningForBeaconRegion(beaconRegion: getBeaconRegion())
        //notifica()
        
    }
    func locationManager(_ manager: CLLocationManager, didEnterRegion region: CLRegion) {
        NSLog("%@", "enterRegion")
        startScanningForBeaconRegion(beaconRegion: getBeaconRegion())
    }
    func locationManager(_ manager: CLLocationManager, didUpdateHeading newHeading: CLHeading) {
       // print ("compasss \(newHeading.magneticHeading)")
    }
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        NSLog("%@", "didEnterBackground")
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

 
}
extension AppDelegate:UNUserNotificationCenterDelegate{
    
    func notifica(color: String) {
        var tempArt : Artwork = Artwork("", "", "", "", "", "")
        var id : InitialData = InitialData()
        if color == "mint" {
            tempArt = id.artWorks[0]
        } else if color == "viola" {
            tempArt = id.artWorks[1]
        } else if color == "cyan" {
            tempArt = id.artWorks[2]
        } else {
            return
        }
        
        print("notification will be triggered in one second..Hold on tight")
        
        let randomNum:UInt32 = arc4random_uniform(100)
        let content = UNMutableNotificationContent()
        content.title = tempArt.title
        content.subtitle = "ArtMuseum"
        content.body = tempArt.text! ?? ""
       // content.sound = UNNotificationSound.default()
        
        if let path = Bundle.main.path(forResource: tempArt.id, ofType: "jpg") {
            let url = URL(fileURLWithPath: path)
            
            do {
                let attachment = try UNNotificationAttachment(identifier: "ArtImage", url: url, options: nil)
                content.attachments = [attachment]
            } catch {
                print("attachment not found.")
            }
        }
       var item : [UNNotificationRequest] = [UNNotificationRequest]()
        var notifications = UNUserNotificationCenter.current().getPendingNotificationRequests { (notifications) in
            print("Count: \(notifications.count)")
            for item in notifications {
                print(item.content)
            }
        }
        for i in item{
            if i.identifier == tempArt.id {
                return
            }
        }
        let trigger = UNTimeIntervalNotificationTrigger.init(timeInterval: 1.0, repeats: false)
        let request = UNNotificationRequest(identifier: tempArt.id, content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().add(request){(error) in
            if (error != nil){
                print("Error send notification")
            }
        }
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        
        print("Tapped in notification")
    }
    
    //This is key callback to present notification while the app is in foreground
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        
        print("Notification being triggered")
        //You can either present alert ,sound or increase badge while the app is in foreground too with ios 10
        //to distinguish between notifications
        if notification.request.identifier == requestIdentifier{
            
            completionHandler( [.alert,.badge])
            
        }
    }
}

