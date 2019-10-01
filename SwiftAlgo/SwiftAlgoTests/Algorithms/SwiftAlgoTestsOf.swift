//
//  SwiftAlgoTestsAllOf.swift
//  SwiftAlgoTests
//
//  Created by Davit Siradeghyan on 10/1/19.
//  Copyright © 2019 Davit. All rights reserved.
//

import XCTest

class SwiftAlgoTestsAllOf: XCTestCase {
    
    func testAllOf() {
        let arr1 = [1, 5, 7, 2]
        var res = SwiftAlgo.all_of(inContainer: arr1, withPredicate: { $0 % 2 != 0 })
        XCTAssertFalse(res)
        
        let arr2 = [1, 5, 7]
        res = SwiftAlgo.all_of(inContainer: arr2, withPredicate: { $0 % 2 != 0 })
        XCTAssertTrue(res)
        
        let arr3 = [2, 4, 6, 8]
        res = SwiftAlgo.all_of(inContainer: arr3, withPredicate: { $0 % 2 != 0 })
        XCTAssertFalse(res)
    }
    
    func testAnyOf() {
        let arr1 = [1, 5, 7, 2]
        var res = SwiftAlgo.any_of(inContainer: arr1, withPredicate: { $0 % 2 == 0 })
        XCTAssertTrue(res)
        
        let arr2 = [1, 5, 7]
        res = SwiftAlgo.any_of(inContainer: arr2, withPredicate: { $0 % 2 == 0 })
        XCTAssertFalse(res)
        
        let arr3 = [2, 4, 6, 8]
        res = SwiftAlgo.any_of(inContainer: arr3, withPredicate: { $0 % 2 == 0 })
        XCTAssertTrue(res)
    }
    
    func testNoneOf() {
        let arr1 = [1, 5, 7, 2]
        var res = SwiftAlgo.none_of(inContainer: arr1, withPredicate: { $0 % 2 == 0 })
        XCTAssertFalse(res)
        
        let arr2 = [1, 5, 7]
        res = SwiftAlgo.none_of(inContainer: arr2, withPredicate: { $0 % 2 == 0 })
        XCTAssertTrue(res)
        
        let arr3 = [2, 4, 6, 8]
        res = SwiftAlgo.none_of(inContainer: arr3, withPredicate: { $0 % 2 == 0 })
        XCTAssertFalse(res)
    }
    
    func testOneOf() {
        let arr1 = [1, 5, 7, 2]
        var res = SwiftAlgo.one_of(inContainer: arr1, withPredicate: { $0 % 2 == 0 })
        XCTAssertTrue(res)
        
        let arr2 = [1, 5, 7]
        res = SwiftAlgo.one_of(inContainer: arr2, withPredicate: { $0 % 2 == 0 })
        XCTAssertFalse(res)
        
        let arr3 = [2, 4, 6, 8]
        res = SwiftAlgo.one_of(inContainer: arr3, withPredicate: { $0 % 2 == 0 })
        XCTAssertFalse(res)
    }

}
