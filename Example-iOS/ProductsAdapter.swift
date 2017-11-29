//
//  ProductsAdapter.swift
//  Example-iOS
//
//  Created by Dmitry on 11/29/17.
//

import Foundation
import RollView

class ProductsAdapter: Adapter {
    var products: [String]!
    
    var count: Int {
        return products.count
    }
    
    func item(forPosition position: Int) -> Any {
        return products[position]
    }
    
    func view(forPosition position: Int, convertView: UIView?) -> UIView {
        var result: ProductView! = nil
        
        if let reuseView = convertView as? ProductView {
            result = reuseView
        }
        else {
            result = viewType(forPosition: position).init(frame: CGRect.zero) as? ProductView
        }
        
        result.fill(with: products[position])
        
        return result
    }
    
    func viewType(forPosition position: Int) -> UIView.Type {
        return ProductView.self
    }
}
