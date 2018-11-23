//
//  InitialMuseumData.swift
//  artmuseum
//
//  Created by Westley Rotolo on 22/06/17.
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//

import Foundation

class InitialMuseumData{
    var museums : [Museum] = [Museum]()

    init(){        
        var m1 : Museum = Museum("Uffizi Gallery", "The Gallery occupies the first and second floors of the large building built between 1560 and 1580 on Giorgio Vasari's design: it is one of the most famous museums in the world for its extraordinary collections of ancient sculptures and paintings (from the Middle Ages to the Modern Age ). \n\nAddress \nPiazzale degli Uffizi 6 \n 50122 Florence \n\nOpening hours \n From Tuesday to Sunday: 8.15 a.m. - 6.50 p.m. \n\n\n ", "Florence", 43.7684, 11.2551,  #imageLiteral(resourceName: "The Uffizi Gallery"))
        
        m1.addImgs(#imageLiteral(resourceName: "The Uffizi Gallery"))
        m1.addImgs(#imageLiteral(resourceName: "Uffizi1"))
        m1.addImgs(#imageLiteral(resourceName: "Uffizi2"))
        m1.addImgs(#imageLiteral(resourceName: "Uffizi3"))
        m1.addFloors(#imageLiteral(resourceName: "UffiziFloors"))
        museums.append(m1)
        
        var m2 :  Museum = Museum("Louvre Museum", "Louvre Museum is the world's largest museum and a historic monument in Paris, France. The museum is housed in the Louvre Palace, originally built as a fortress in the late 12th century under Philip II. \n\nAddress \n Musée du Louvre, 75001 Paris, France \n\nOpening hours \nMonday, Thursday, Saturday,Sunday: from 9 a.m. to 6 p.m. \nWednesday, Friday: from 9 a.m. to 9.45 p.m.", "Paris", 48.860294, 2.338629, #imageLiteral(resourceName: "The Louvre Museum"))
        m2.addImgs(#imageLiteral(resourceName: "The Louvre Museum"))
        m2.addImgs(#imageLiteral(resourceName: "Louvre1"))
        m2.addImgs(#imageLiteral(resourceName: "Louvre2"))
        m2.addImgs(#imageLiteral(resourceName: "Louvre3"))
        m2.addFloors(#imageLiteral(resourceName: "LouvreFloor"))
        museums.append(m2)
        
        var m3 : Museum = Museum("Metropolitan Museum of Art", "The Met, is located in New York City and is among the most visited art museums in the world. Its permanent collection contains over two million works, divided among seventeen curatorial departments. The main building, on the eastern edge of Central Park along Manhattan's Museum Mile, is by area one of the world's largest art galleries. \n\nAddress \n1000 Fifth Avenue, New York, NY 10028 \n\n Opening hours \nMonday, Thursday, Wednesday, Sunday: from 10 a.m. to 5.30 p.m \nFriday, Saturday: from 10 a.m. to 9 p.m.", "New York", 40.7794162, -73.9633727,  #imageLiteral(resourceName: "The Metropolitan Museum") )
        m3.addImgs(#imageLiteral(resourceName: "The Metropolitan Museum"))
        m3.addImgs(#imageLiteral(resourceName: "Metropolitan1"))
        m3.addImgs(#imageLiteral(resourceName: "Metropolitan2"))
        m3.addImgs(#imageLiteral(resourceName: "Metropolitan3"))
        m3.addFloors(#imageLiteral(resourceName: "MetropolitanFloor"))
        museums.append(m3)
        
        var m4 : Museum = Museum("British Museum" , " ", "London", 0.0 , 0.0, #imageLiteral(resourceName: "The British museum") )
        m4.addImgs(#imageLiteral(resourceName: "The British museum"))
        m4.addImgs(#imageLiteral(resourceName: "British1"))
        m4.addImgs(#imageLiteral(resourceName: "British2"))
        m4.addImgs(#imageLiteral(resourceName: "British3"))
        m4.addFloors(#imageLiteral(resourceName: "BritishMuseumFloor"))
        museums.append(m4)
        
        var m5 : Museum = Museum("Vatican Museums", " ", "Vatican City", 0.0, 0.0, #imageLiteral(resourceName: "Vatican Museums"))
        m5.addImgs(#imageLiteral(resourceName: "Vatican Museums"))
        m5.addImgs(#imageLiteral(resourceName: "MuseiVaticani1"))
        m5.addImgs(#imageLiteral(resourceName: "MuseiVaticani2"))
        m5.addImgs(#imageLiteral(resourceName: "MuseiVaticani3"))
        m5.addFloors(#imageLiteral(resourceName: "VaticanMuseumsFloor"))
        museums.append(m5)
        
        var m6 : Museum = Museum("Musée d'Orsay", " ", "Paris", 0.0, 0.0, #imageLiteral(resourceName: "Musee d'Orsay"))
        m6.addImgs(#imageLiteral(resourceName: "Musee d'Orsay"))
        m6.addImgs(#imageLiteral(resourceName: "D'Orsay1"))
        m6.addImgs(#imageLiteral(resourceName: "D'Orsay2"))
        m6.addImgs(#imageLiteral(resourceName: "D'Orsay3"))
        m6.addFloors(#imageLiteral(resourceName: "D'OrsayMuseumFloor"))
        museums.append(m6)
        
        var m7 : Museum = Museum("Prado Museum", " ", "Madrid", 0.0, 0.0, #imageLiteral(resourceName: "The Prado Museum"))
        m7.addImgs(#imageLiteral(resourceName: "The Prado Museum"))
        m7.addImgs(#imageLiteral(resourceName: "Prado1"))
        m7.addImgs(#imageLiteral(resourceName: "Prado2"))
        m7.addImgs(#imageLiteral(resourceName: "Prado3"))
        m7.addFloors(#imageLiteral(resourceName: "PradoMuseumFloor"))
        museums.append(m7)
        
        var m8 : Museum = Museum("Gallery of the Academy", " ", "Florence", 0.0, 0.0, #imageLiteral(resourceName: "The Gallery of the Academy"))
        m8.addImgs(#imageLiteral(resourceName: "The Gallery of the Academy"))
        m8.addImgs(#imageLiteral(resourceName: "AcademyGallery1"))
        m8.addImgs(#imageLiteral(resourceName: "AcademyGallery2"))
        m8.addImgs(#imageLiteral(resourceName: "AcademyGallery3"))
        m8.addFloors(#imageLiteral(resourceName: "GalleryAcademyfLOOR"))
        museums.append(m8)
        
        var m9 : Museum = Museum("Rijksmuseum", " ", "Amsterdam", 0.0, 0.0, #imageLiteral(resourceName: "The Rijksmuseum"))
        m9.addImgs(#imageLiteral(resourceName: "The Rijksmuseum"))
        m9.addImgs(#imageLiteral(resourceName: "Rijksmuseum1"))
        m9.addImgs(#imageLiteral(resourceName: "Rijksmuseum2"))
        m9.addImgs(#imageLiteral(resourceName: "Rijksmuseum3"))
        m9.addFloors(#imageLiteral(resourceName: "RijksmuseumFloor"))
        museums.append(m9)
        
        var m10 : Museum = Museum("Borghese Gallery", " ", "Rome", 0.0, 0.0, #imageLiteral(resourceName: "The Borghese Gallery"))
        m10.addImgs(#imageLiteral(resourceName: "The Borghese Gallery"))
        m10.addImgs(#imageLiteral(resourceName: "Borghese1"))
        m10.addImgs(#imageLiteral(resourceName: "Borghese2"))
        m10.addImgs(#imageLiteral(resourceName: "Borghese3"))
        m10.addFloors(#imageLiteral(resourceName: "BorgheseGalleryFloor"))
        museums.append(m10)
        
    }
    

}
