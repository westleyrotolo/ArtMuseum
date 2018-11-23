//
//  Events.swift
//  artmuseum
//
//  Created by Westley Rotolo on 21/06/17.
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//

import Foundation

class Events{
    var title: String
    var notes: String
    var img: UIImage
    var start_date: Date
    var end_date: Date
    init(title: String, notes: String, img: UIImage, start_date: Date, end_date: Date){
        self.title = title
        self.notes = notes
        self.img = img
        self.start_date = start_date
        self.end_date = end_date
    }
    init(title: String, notes: String, img: UIImage, start_date: Date){
        self.title = title
        self.notes = notes
        self.img = img
        self.start_date = start_date
        self.end_date = start_date
    }
    
}
