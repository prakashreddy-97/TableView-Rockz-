//
//  SecondViewController.swift
//  TableView Rockz!
//
//  Created by Student on 2/20/19.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit

class TouristSitesViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return touristPlaces.count
        }else{
            return -1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "places")!
        cell.textLabel?.text = touristPlaces[indexPath.row]
        return cell
    }
    
    var touristPlaces = ["Mozingo Lake","Statue of Liberty","Eiffel Tower", "Taj Mahal", "Red Rocks"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

