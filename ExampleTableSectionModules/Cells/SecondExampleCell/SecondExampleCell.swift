//
//  SecondExampleCell.swift
//  ExampleTableSectionModules
//
//  Created by Carlos Jimenez Galindo on 16/11/15.
//  Copyright © 2015 Carlos Jimenez Galindo. All rights reserved.
//

import UIKit
import TableSectionModules

class SecondExampleCell: ModuleCell {
    
    @IBOutlet var optionLabel:UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
