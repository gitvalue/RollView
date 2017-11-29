//
//  ViewController.swift
//  Example-iOS
//
//  Created by Dmitry on 11/28/17.
//

import UIKit
import RollView

class ViewController: UIViewController {
    private var rollView: RollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rollView = RollView()
        rollView.frame = view.frame
        rollView.autoresizingMask = [ .flexibleWidth, .flexibleHeight ]
        
        view.addSubview(rollView)
        
        let adapter = ProductsAdapter()
        adapter.products = [
            "Butter",
            "Milk",
            "Bread",
            "Baton",
            "Cream pie",
            "Two girls, one cup",
            "Cheeze",
            "Potatoes",
            "Apples",
            "Microsofts",
            "Googles",
            "Amazons",
            "Facebooks"
        ]
        
        rollView.adapter = adapter
        
        rollView.reload()
    }
}

