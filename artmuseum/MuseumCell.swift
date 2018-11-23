//
//  MuseumCell.swift
//  artmuseum
//
//  Created by Westley Rotolo on 22/06/17.
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//

import UIKit

class MuseumCell: UICollectionViewCell {

    @IBOutlet weak var cityMuseum: UILabel!
    @IBOutlet weak var nameMuseum: UILabel!
    @IBOutlet weak var imageMuseum: UIImageView!
    @IBInspectable var cornerRadius: CGFloat = 5
    @IBInspectable var shadowOffsetWidth: Int = 3
    @IBInspectable var shadowOffsetHeight: Int = 3
    @IBInspectable var shadowColor: UIColor? = UIColor.black
    @IBInspectable var shadowOpacity: Float = 0.5
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetWidth)
        self.layer.cornerRadius = cornerRadius
        self.layer.shadowColor = shadowColor?.cgColor
        self.layer.masksToBounds = false
        self.layer.shadowOpacity = shadowOpacity
        self.clipsToBounds = true
    }

    

}
