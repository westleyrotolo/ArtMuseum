//
//  Museum.swift
//  artmuseum
//
//  Created by Francesco de Pertis on 19/06/2017.
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//

import Foundation

class Museum {
    var name: String
    var text: String?
    var img: UIImage?
    var imgs: [UIImage]?
    var city: String
    var location: (Double, Double)
    var artworks: [Artwork]?
    var events: [Events]?
    var news: [News]?
    var floor: [UIImage]?
    var tickets: [(tipo: String,  prezzo: String, descr: String)]?
    init(_ name: String, _  text: String, _ city: String, _  lat: Double, _ lon: Double, _ img: UIImage) {
        self.name = name
        self.text = text
        self.location = (lat, lon)
        self.img = img
        self.city = city
        artworks = [Artwork]()
        news = [News]()
        events = [Events]()
        tickets = [(tipo: String,  prezzo: String, descr: String)]()
        imgs = [UIImage]()
        floor = [UIImage]()
    }
    init(){
        name=""
        city=""
        location = (0.0,0.0)
        news = [News]()
        events = [Events]()
    }
    
    func addArtwork(artwork: Artwork){
        artworks?.append(artwork)
    }
    func addFloors(_ image: UIImage){
        floor?.append(image)
    }
    func addImgs(_ image: UIImage){
            imgs?.append(image)
        
    }
    func addArtwork(artworks: [Artwork]){
        self.artworks!.removeAll()
        for x in artworks{
            self.artworks?.append(x)
        }
    }
    func addEvents(events: [Events]){
        self.events?.removeAll()
        for x in events{
            self.events?.append(x)
        }
    }
    func addNews(news: [News]){
        self.news?.removeAll()
        for x in news{
            self.news?.append(x)
        }
    }
}
