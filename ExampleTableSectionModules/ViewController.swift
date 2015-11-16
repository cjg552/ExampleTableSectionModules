//
//  ViewController.swift
//  ExampleTableSectionModules
//
//  Created by Carlos Jimenez Galindo on 12/11/15.
//  Copyright © 2015 Carlos Jimenez Galindo. All rights reserved.
//

import UIKit
import TableSectionModules

class ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func configureTableSectionModules() {
        self.tableSectionModules = []
        
        let firstModule: FirstModule = FirstModule(tableView: self.baseTableView!,section: self.tableSectionModules!.count)
        self.tableSectionModules?.append(firstModule)
        
        let secondModule: SecondModule = SecondModule(tableView: self.baseTableView!,section: self.tableSectionModules!.count)
        self.tableSectionModules?.append(secondModule)
    }


}
