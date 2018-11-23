//
//  CustomTabBar.swift
//  artmuseum
//
//  Created by Westley Rotolo on 19/06/17.
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//

import UIKit

class CustomTabBar: UITabBarController {


    override func viewWillAppear(_ animated: Bool) {
        self.selectedIndex = 1
        super.viewWillAppear(animated)
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
