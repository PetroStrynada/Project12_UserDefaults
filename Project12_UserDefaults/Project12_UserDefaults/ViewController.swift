//
//  ViewController.swift
//  Project12_UserDefaults
//
//  Created by Petro Strynada on 01.08.2023.
//
//https://www.hackingwithswift.com/read/12/2/reading-and-writing-basics-userdefaults

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let defaults = UserDefaults.standard

        defaults.set(26, forKey: "Age")
        defaults.set(true, forKey: "UserFaceID")
        defaults.set(CGFloat.pi, forKey: "Pi")

        defaults.set("Petro Strynada", forKey: "Name")
        defaults.set(Data(), forKey: "LastRun")

        let array = ["Hello", "World"]
        defaults.set(array, forKey: "SavedArray")

        let dict = ["Name": "Petro", "Country": "Ukraine"]
        defaults.set(dict, forKey: "SavedDictionary")

        let savedInteger = defaults.integer(forKey: "Age")
        let savedBoolean = defaults.bool(forKey: "UserFaceID")

        let savedArray = defaults.object(forKey: "SavedArray") as? [String] ?? [String]()
        let savedDictionary = defaults.object(forKey: "SavedDictionary") as? [String: String] ?? [String: String]()


    }

}

