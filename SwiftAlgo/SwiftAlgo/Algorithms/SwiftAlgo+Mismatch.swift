//
//  SwiftAlgo+Mismatch.swift
//  SwiftAlgo
//
//  Created by Davit Siradeghyan on 9/30/19.
//  Copyright © 2019 Davit. All rights reserved.
//

import Foundation

extension SwiftAlgo {
    
    class func mismatch<T: Equatable>(container1: [T], container2: [T]) -> (T?, T?) {
        var result: (T?, T?) = (nil, nil)
        let length1 = container1.count
        let length2 = container2.count
        let length = length1 < length2 ? length1 : length2
        for index in 0..<length {
            if container1[index] != container2[index] {
                result = (container1[index], container2[index])
                break
            }
        }
        if result.0 == nil {
            if length1 < length2 {
                result.1 = container2[length]
            } else if length1 > length2 {
                result.0 = container1[length]
            }
        }
        return result
    }

}
