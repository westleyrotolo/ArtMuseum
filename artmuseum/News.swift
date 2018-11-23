//
//  News.swift
//  artmuseum
//
//  Created by Westley Rotolo on 22/06/17.
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//

import Foundation

class News{
    var title: String
    var notes: String
    var img: UIImage
    var date: Date
    init(title: String, notes: String, img: UIImage, date: Date){
        self.title = title
        self.notes = notes
        self.img = img
      
        self.date = date
    }

}
