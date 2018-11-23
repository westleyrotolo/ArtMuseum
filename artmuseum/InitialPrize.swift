//
//  InitialPrize.swift
//  artmuseum
//
//  Created by Westley Rotolo on 25/06/17.
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//

import Foundation

class InitialPrize{
    var list : [Coupon] = [Coupon]()
    init(){
        list.append(Coupon(p: "10%Off Bookshop Purchase", c: "100"))
        list.append(Coupon(p: "20%Off Bookshop Purchase", c: "200"))
        list.append(Coupon(p: "30%Off Bookshop Purchase", c: "300"))
        list.append(Coupon(p: "50%Off Bookshop Purchase", c: "500"))
        list.append(Coupon(p: "50%Off Museum Ticket", c: "500"))
        list.append(Coupon(p: "Free Entry", c: "1000"))
        list.append(Coupon(p: "25%Off Entry In Agreed Museums", c: "750"))
        list.append(Coupon(p: "50%Off Entry in Agreed Museums", c: "1500"))
        list.append(Coupon(p: "Free Entry in Agreed Museums", c: "2000"))
        
    }
}
