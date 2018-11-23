//
//  CoreDataController.swift
//  artmuseum
//
//  Created by Westley Rotolo on 25/06/17.
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//

import Foundation
import CoreData
class CoreDataController{
    static let shared = CoreDataController()
    private var context: NSManagedObjectContext

    private init() {
        let application = UIApplication.shared.delegate as! AppDelegate
        self.context = application.persistentContainer.viewContext
    }
    
}
