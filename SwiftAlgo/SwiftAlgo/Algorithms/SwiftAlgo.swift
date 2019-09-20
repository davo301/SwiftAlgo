//
//  SwiftAlgo.swift
//  SwiftAlgo
//
//  Created by Davit on 2/8/18.
//  Copyright © 2018 Davit. All rights reserved.
//

import Foundation

final class SwiftAlgo {
    
    class func count<T: Equatable>(value: T, inContainer container: [T]) -> Int {
        return container.filter{ $0 == value }.count
    }
 
    class func count<T: Equatable>(inContainer container: [T], withPredicate predicate: (T) -> Bool ) -> Int {
        return container.filter(predicate).count
    }
    
}
