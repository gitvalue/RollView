//
//  ProductView.swift
//  Example-iOS
//
//  Created by Dmitry on 11/29/17.
//

import UIKit

class ProductView: UIView {
    @IBOutlet private var label: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let contentView = Bundle.main.loadNibNamed("ProductView", owner: self, options: nil)?.last as! UIView
        contentView.frame = bounds
        contentView.autoresizingMask = [ .flexibleWidth, .flexibleHeight ]
        
        addSubview(contentView)
    }
    
    func fill(with product: String) {
        label.text = product
        
        let grayShade = CGFloat(arc4random_uniform(255)) / 255.0
        backgroundColor = UIColor(red: grayShade, green: grayShade, blue: grayShade, alpha: 1.0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
