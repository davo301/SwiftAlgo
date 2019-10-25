//
//  SwiftAlgo+Bounds.swift
//  SwiftAlgo
//
//  Created by Davit Siradeghyan on 10/21/19.
//  Copyright © 2019 Davit. All rights reserved.
//

import Foundation

extension SwiftAlgo {
    
    class func lower_bound<T: Comparable>(container: [T], element: T,
                                          startIndex: Int, endIndex: Int) -> T? {
        if startIndex < container.startIndex || endIndex > container.endIndex {
            return nil
        }
        let subrange = container[startIndex..<endIndex].sorted()
        if let idx = subrange.firstIndex(of: element), idx - 1 >= 0 {
            return subrange[idx - 1]
        }
        return nil
    }
    
    class func upper_bound<T: Comparable>(container: [T], element: T,
                                          startIndex: Int, endIndex: Int) -> T? {
        if startIndex < container.startIndex || endIndex > container.endIndex {
            return nil
        }
        let subrange = container[startIndex..<endIndex].sorted()
        if let idx = subrange.lastIndex(of: element), idx < subrange.endIndex - 1 {
            return subrange[idx + 1]
        }
        return nil
    }
    
}
