//
//  FirstViewController.swift
//  TableView Rockz!
//
//  Created by Student on 2/20/19.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit


class FirstViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return cities.count
        }else{
            return -1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cities")!
        cell.textLabel?.text = cities[indexPath.row]
        return cell
    }
    
    var cities = ["Paris","London","Adelaide", "New York", "Hyderabad"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}

