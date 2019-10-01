//
//  SwiftAlgoTestsIsSorted.swift
//  SwiftAlgoTests
//
//  Created by Davit Siradeghyan on 10/1/19.
//  Copyright © 2019 Davit. All rights reserved.
//

import XCTest

class SwiftAlgoTestsIsSorted: XCTestCase {
    
    func testIsSorted() {
        let arr1 = [1, 2, 3, 7, 6, 5]
        var res = SwiftAlgo.is_sorted(container: arr1, withPredicate: { $0 < $1 })
        XCTAssertFalse(res)
        
        let arr2 = [1, 2, 3, 5, 6, 7]
        res = SwiftAlgo.is_sorted(container: arr2, withPredicate: { $0 < $1 })
        XCTAssertTrue(res)
    }

}
