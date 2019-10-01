//
//  SwiftAlgo+Of.swift
//  SwiftAlgo
//
//  Created by Davit Siradeghyan on 10/1/19.
//  Copyright © 2019 Davit. All rights reserved.
//

import Foundation

extension SwiftAlgo {
    
    class func all_of<T: Equatable>(inContainer container: [T], withPredicate predicate: (T) -> Bool ) -> Bool {
        return container.filter(predicate).count == container.count
    }
    
    class func any_of<T: Equatable>(inContainer container: [T], withPredicate predicate: (T) -> Bool ) -> Bool {
        return !container.filter(predicate).isEmpty
    }
    
    class func none_of<T: Equatable>(inContainer container: [T], withPredicate predicate: (T) -> Bool ) -> Bool {
        return container.filter(predicate).isEmpty
    }
    
    class func one_of<T: Equatable>(inContainer container: [T], withPredicate predicate: (T) -> Bool ) -> Bool {
        return container.filter(predicate).count == 1
    }
    
}
