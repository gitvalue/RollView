//
//  ViewController.swift
//  Example-iOS
//
//  Created by Dmitry on 11/28/17.
//

import UIKit
import RollView

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rollView = RollView()
        rollView.adapter = nil
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

