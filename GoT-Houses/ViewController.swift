//
//  ViewController.swift
//  GoT-Houses
//
//  Created by Kathryn Tatum on 4/5/20.
//  Copyright © 2020 Kathryn Tatum. All rights reserved.
//


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    //For passing in array of strings: var houses = ["house1", "house2", "house3"]
    var houses = Houses()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        houses.getData {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail" {
            let destination = segue.destination as! DetailViewController
            let selectedIndexPath = tableView.indexPathForSelectedRow!
            destination.houseInfo = houses.houseArray[selectedIndexPath.row]
        }
    }
    
}

//HOW WE PUT INFO IN THE CELLS
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return houses.houseArray.count
        //When passing in array of strings: return houses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "\(indexPath.row + 1). \(houses.houseArray[indexPath.row].name)"
        //houseArray added later, .name added later, the number part added later
        return cell
    }
    
    
}

