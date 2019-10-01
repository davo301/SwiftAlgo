//
//  SwiftAlgo+IsSorted.swift
//  SwiftAlgo
//
//  Created by Davit Siradeghyan on 10/1/19.
//  Copyright © 2019 Davit. All rights reserved.
//

import Foundation

extension SwiftAlgo {
    
    class func is_sorted<T: Comparable>(container: [T], withPredicate predicate: (T, T) -> Bool ) -> Bool {
        let sortedContainer = container.sorted()
        return sortedContainer == container
    }
    
}
