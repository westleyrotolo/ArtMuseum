//
//  User.swift
//  artmuseum
//
//  Created by Gennaro Avossa on 19/06/2017.
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//

import Foundation

class User {
    let firstName: String
    let lastName: String
    var coins: Int
    var reactions: [String:String]
    
    init(_ firstname: String, _ lastname: String){
        self.coins = 0
        self.firstName = firstname
        self.lastName = lastname
        self.reactions = [String:String]()
    }
    
    func addReaction(_ id: String, _ reaction: String){
        self.reactions.updateValue(reaction, forKey: id)
    }
}
