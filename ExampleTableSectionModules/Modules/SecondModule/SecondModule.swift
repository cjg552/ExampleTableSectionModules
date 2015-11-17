//
//  SecondModule.swift
//  ExampleTableSectionModules
//
//  Created by Carlos Jimenez Galindo on 12/11/15.
//  Copyright © 2015 Carlos Jimenez Galindo. All rights reserved.
//

import UIKit
import TableSectionModules

class SecondModule: TableSectionModule {
    
    override func registerViews() {
        super.registerViews()
        
        let exampleReuseIdentifier = SecondExampleCell.reuseIdentifier()
        let cellNib = UINib(nibName: exampleReuseIdentifier, bundle: nil)
        self.tableView.registerNib(cellNib, forCellReuseIdentifier: exampleReuseIdentifier)
    }
    
    override func numberOfRows() -> NSInteger {
        return 5
    }
    
    override func heightForRow(row: NSInteger) -> CGFloat {
        return 44.0
    }
    
    override func cellForRow(row: NSInteger) -> UITableViewCell {
        let cell:SecondExampleCell = self.createSecondExampleCell(row)
        return cell
    }
    
    func createSecondExampleCell(row: NSInteger) -> SecondExampleCell {
        let exampleCell: SecondExampleCell? = self.tableView.dequeueReusableCellWithIdentifier(SecondExampleCell.reuseIdentifier(), forIndexPath: NSIndexPath(forRow: row, inSection: self.section)) as? SecondExampleCell
        
        exampleCell?.optionLabel.text = String(format: "Example title cell %i section %i", arguments: [row,self.section])
        return exampleCell!
    }


}
