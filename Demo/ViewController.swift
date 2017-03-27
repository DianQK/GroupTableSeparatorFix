//
//  ViewController.swift
//  Demo
//
//  Created by DianQK on 27/03/2017.
//  Copyright © 2017 dianqk. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let data: [[Int]] = [
        [1, 2, 3],
        [4, 5, 6]
    ]

    override func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "\(data[indexPath.section][indexPath.row])"
        return cell
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Header"
    }

    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "Footer"
    }

}

