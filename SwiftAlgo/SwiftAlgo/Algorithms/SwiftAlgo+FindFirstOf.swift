//
//  SwiftAlgo+FindFirstOf.swift
//  SwiftAlgo
//
//  Created by Davit Siradeghyan on 9/30/19.
//  Copyright © 2019 Davit. All rights reserved.
//

import Foundation

extension SwiftAlgo {
    
    class func find_first_of<T: Equatable>(value: T, inContainer container: [T]) -> Int? {
        return container.index(of: value)
    }

}
