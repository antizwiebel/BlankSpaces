//
//  MainViewController.swift
//  BlankSpaces
//
//  Created by Jordan Pichler on 22/11/2018.
//  Copyright © 2018 Jordan A. Pichler. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let networker = NetworkingManager()
        networker.fetchLessons(completion: printLessons)
    }
    
    func printLessons(lessons: [Lesson]) {
        if lessons.isEmpty { print("FML") }
        
        for l in lessons {
            print("We got lesson \(l.id) here.")
        }
    }
}
