//
//  FirstExampleCell.swift
//  TableSectionModules
//
//  Created by Carlos Jimenez Galindo on 12/11/15.
//  Copyright © 2015 CocoaPods. All rights reserved.
//

import UIKit
import TableSectionModules

class FirstExampleCell: ModuleCell {
    
    @IBOutlet var imageAvatar:UIImageView!
    @IBOutlet var nameLabel:UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.imageAvatar.layer.cornerRadius = 5.0
        self.imageAvatar.layer.masksToBounds = true
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
