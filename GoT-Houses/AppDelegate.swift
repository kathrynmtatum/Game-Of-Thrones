//
//  AppDelegate.swift
//  GoT-Houses
//
//  Created by Kathryn Tatum on 4/5/20.
//  Copyright © 2020 Kathryn Tatum. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

//PART 1

//When creating the “embed in” for your tableView: yellow circle → editor → embed in → navigation controller
//Do the delegate / datasource prep!
        //Right under ViewDidLoad: add delegate + datasource = self
        //At bottom: add extension for ViewController, delegate / datasource + stubs
//“Declare it as an instance of Houses class, then modify the code in your extension so that it works with the houses object, and refers to the houseArray property of this houses object, with the name property of each houseArray element displayed in the cell”
        //Houses() up at the top (name of class), edit extension w/ .houseArray (variable in class, which will hold house info)
//getData: reusable (the whole thing)
        //Create a private struct called returned, make it codable (WITHIN CLASS)
        //Put all the variables down the line in it, not including url
        //Make sure returned is in correct format: if it’s an array, put brackets around it
//Get the number before the words
        //houses.GetData part should be in there in ViewController
        //Add the number in at the cell.textLabel.text in ViewController



//PART 2

//Setting up new view controller:
        //Drag viewcontroller onto screen
        //Creating new file (Cocoa touch class) of type UI ViewController
        //Set the class to the right ViewController file name (under id icon)
//Creating a link between what is clicked, and what it takes you to
        //Create variable of type struct
        //prepareForSegue in viewController (use name of identifier: shows if you click on the line)
//Showing the info
        //(ToDoList will have stuff)
        //Call updateUserInterface() under viewDidLoad
        //The update user interface will have the things that we want to show up when that thing is clicked (again, ToDoList)



//PART 3

//Initial view controller: same process as above viewcontroller
//Get image to recognize TAP: object called tap gesture recognizer
        //MUST go into attributes inspector & click to select the imageView’s ‘user interaction enabled’
//To get the tap to register and do something:
        //Control drag from yellow ball to navigation controller
        //Click on line, name it (“set identifier attribute”)
        //Code under func imageTapped
//To change the way a screen is presented, click on yellow ball → attributes inspector → presentation (module, full screen, etc)
//SOUND:
        //Import AV foundation on screen sound is playing from
        //Create variable audioplayer
        //Func playSound (reusable)
        //In ViewDidLoad, call function playSound, passing in string being name of the sound that is saved


