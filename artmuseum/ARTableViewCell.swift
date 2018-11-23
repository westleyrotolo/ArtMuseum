//
//  ARTableViewCell.swift
//  artmuseum
//
//  Created by Westley Rotolo on 20/06/17.
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//

import UIKit

class ARTableViewCell: UITableViewCell {
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var imageAR: UIImageView!
    @IBOutlet weak var textAr: UILabel!
    @IBInspectable var cornerRadius: CGFloat = 5
    @IBInspectable var shadowOffsetWidth: Int = 0
    @IBInspectable var shadowOffsetHeight: Int = 3
    @IBOutlet weak var subtextAr: UILabel!
    @IBInspectable var shadowColor: UIColor? = UIColor.black
    @IBInspectable var shadowOpacity: Float = 0.2
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imageAR.layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetWidth)
        imageAR.layer.cornerRadius = cornerRadius
        imageAR.layer.shadowColor = shadowColor?.cgColor
        imageAR.layer.masksToBounds = false
        imageAR.layer.shadowOpacity = shadowOpacity
        imageAR.clipsToBounds = true
        view.layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetWidth)
        view.layer.cornerRadius = cornerRadius
        view.layer.shadowColor = shadowColor?.cgColor
        view.layer.masksToBounds = false
        view.layer.shadowOpacity = shadowOpacity
        view.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
