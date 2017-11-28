import UIKit

/**
 Adapter serves as a bridge between AdapterView and data that fill it.
 Provides access to data and is repsonsibe for creating corresponding Views for
 each item in dataset.
 
 - author: gitvalue
 */
protocol Adapter {
    /**
     Number of elements in dataset
     */
    var count: Int { get }
    
    /**
     Gets data associated with specified position in dataset
     
     - parameters:
        - position: position of data in dataset
     
     - Returns: data
     */
    func item(forPosition position: Int) -> Any
    
    /**
     Gets view that corresponds to specified position in dataset
     
     - parameters:
        - position: position of data in dataset
        - convertView: old view to reuse
     
     - Returns: view
     */
    func view(forPosition position: Int, convertView: UIView?) -> UIView
    
    /**
     Get view's type that will be created by view(forPosition:convertView:) method
     
     - parameters:
        - position: position of data in dataset
     
     - Returns: view's type
     */
    func viewType(forPosition position: Int) -> UIView.Type
}
