//
//  Houses.swift
//  GoT-Houses
//
//  Created by Kathryn Tatum on 4/5/20.
//  Copyright © 2020 Kathryn Tatum. All rights reserved.
//

import Foundation


class Houses {
    
    //private struct used for JSON
//    private struct Returned: Codable {
//        var name: String
//        var region: String
//        var coatOfArms: String
//        var words: String
//    }
    
    //can initialize within the declaration of the class - like this
    var houseArray: [HouseInfo] = []
    var url = "https://www.anapioficeandfire.com/api/houses?page=1&pageSize=50"
    var pageNumber = 1

    func getData(completed: @escaping ()->()) {
        let urlString = url
        print("😼 We are accessing the url \(urlString)")
        
        // Create a URL
        guard let url = URL(string: urlString) else {
            print("😡 ERROR: Could not create a URL from \(urlString)")
            completed()
            return
        }
        
        // Create Session
        let session = URLSession.shared
        
        // Get data with .dataTask method
        let task = session.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("😡 ERROR: \(error.localizedDescription)")
            }
            
            // note: there are some additional things that could go wrong when using URL session, but we shouldn't experience them, so we'll ignore testing for these for now...
            
            // deal with the data
            do {
                self.houseArray = try JSONDecoder().decode([HouseInfo].self, from: data!)
                print("This is what we've got: \(self.houseArray)")
            } catch {
                print("😡 JSON ERROR: \(error.localizedDescription)")
            }
            completed()
        }
        
        task.resume()
    }

}

//REUSABLE CODE: for getData
//func getData(completed: @escaping ()->()) {
//    let urlString = url
//    print("😼 We are accessing the url \(urlString)")
//
//    // Create a URL
//    guard let url = URL(string: urlString) else {
//        print("😡 ERROR: Could not create a URL from \(urlString)")
//        completed()
//        return
//    }
//
//    // Create Session
//    let session = URLSession.shared
//
//    // Get data with .dataTask method
//    let task = session.dataTask(with: url) { (data, response, error) in
//        if let error = error {
//            print("😡 ERROR: \(error.localizedDescription)")
//        }
//
//        // note: there are some additional things that could go wrong when using URL session, but we shouldn't experience them, so we'll ignore testing for these for now...
//
//        // deal with the data
//        do {
//            let returned = try JSONDecoder().decode([Returned].self, from: data!)
//        } catch {
//            print("😡 JSON ERROR: \(error.localizedDescription)")
//        }
//        completed()
//    }
//
//    task.resume()
//}
