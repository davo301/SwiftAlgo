//
//  SwiftAlgo+Count.swift
//  SwiftAlgo
//
//  Created by Davit Siradeghyan on 9/20/19.
//  Copyright © 2019 Davit. All rights reserved.
//

import Foundation

extension SwiftAlgo {
    
    class func count<T: Equatable>(value: T, inContainer container: [T]) -> Int {
        return container.filter{ $0 == value }.count
    }
    
    class func count<T: Equatable>(inContainer container: [T], withPredicate predicate: (T) -> Bool ) -> Int {
        return container.filter(predicate).count
    }
    
}
