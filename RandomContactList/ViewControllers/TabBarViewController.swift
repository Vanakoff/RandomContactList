//
//  TabBarViewController.swift
//  RandomContactList
//
//  Created by Andrey Vanakoff on 08/01/2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        let persons = Person.getContactList()
      //  guard let contactListVC = viewControllers?.first as? ContactListTableViewController else { return }
        let contactListVC = viewControllers?.first as! ContactListTableViewController
       // guard let sectioListVC = viewControllers?.last as? SectionTableViewController else { return }
        let sectioListVC = viewControllers?.last as! SectionTableViewController 
        
        contactListVC.persons = persons
        sectioListVC.persons = persons
    }
}
