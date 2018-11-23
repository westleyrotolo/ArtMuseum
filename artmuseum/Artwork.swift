//
//  Artwork.swift
//  artmuseum
//
//  Created by Francesco de Pertis on 19/06/2017.
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//

class Artwork {
    let title: String
    let author: String
    let text: String?
    let id: String
    let year: String
    let room: String
    
    init(_ title: String, _ author: String, _ text: String, _ id: String, _ year: String,_ room: String) {
        self.title = title
        self.author = author
        self.text = text
        self.id = id
        self.year = year
        self.room = room
    }
}
