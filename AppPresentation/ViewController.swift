//
//  ViewController.swift
//  AppPresentation
//
//  Created by Victoria Klimova on 30.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        startPresentation()
    }

    func startPresentation() {
        
        let userDefaults = UserDefaults.standard
        let presentationWasViewed = userDefaults.bool(forKey: "presentationWasViewed")
        if presentationWasViewed == false {
            if let pageViewController = storyboard?.instantiateViewController(withIdentifier: "PageViewController") as? PageViewController {
                present(pageViewController, animated: true, completion: nil)
            }
        }
    }
}

