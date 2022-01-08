//
//  ContactListTableViewController.swift
//  RandomContactList
//
//  Created by Andrey Vanakoff on 08/01/2022.
//

import UIKit

class ContactListTableViewController: UITableViewController {
    
    var persons: [Person] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        content.text = person.fullName
        cell.contentConfiguration = content

        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailedVC = segue.destination as? DetailedViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = persons[indexPath.row]
        detailedVC.person = person
    }
}
