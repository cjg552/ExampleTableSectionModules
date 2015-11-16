//
//  FirstModule.swift
//  TableSectionModules
//
//  Created by Carlos Jimenez Galindo on 12/11/15.
//  Copyright © 2015 CocoaPods. All rights reserved.
//

import UIKit
import TableSectionModules

class FirstModule: TableSectionModule {
    
    override func registerViews() {
        super.registerViews()
        
        let exampleReuseIdentifier = FirstExampleCell.reuseIdentifier()
        let cellNib = UINib(nibName: exampleReuseIdentifier, bundle: nil)
        self.tableView.registerNib(cellNib, forCellReuseIdentifier: exampleReuseIdentifier)
    }
    
    override func numberOfRows() -> NSInteger {
        return 5
    }
    
    override func heightForRow(row: NSInteger) -> CGFloat {
        return 70.0
    }
    
    override func cellForRow(row: NSInteger) -> UITableViewCell {
        let cell:FirstExampleCell = self.createFirstExampleCell(row)
        return cell
    }
    
    func createFirstExampleCell(row: NSInteger) -> FirstExampleCell {
        let exampleCell: FirstExampleCell? = self.tableView.dequeueReusableCellWithIdentifier(FirstExampleCell.reuseIdentifier(), forIndexPath: NSIndexPath(forRow: row, inSection: self.section)) as? FirstExampleCell
        
        exampleCell?.nameLabel.text = String(format: "Example title cell %i section %i", arguments: [row,self.section])
        if row % 2 == 0 {
            exampleCell?.imageAvatar.image = UIImage(named: "icon1")
        }
        else {
            exampleCell?.imageAvatar.image = UIImage(named: "icon2")
        }
        
        return exampleCell!
    }

}
