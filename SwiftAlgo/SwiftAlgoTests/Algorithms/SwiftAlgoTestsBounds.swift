//
//  SwiftAlgoTestsBounds.swift
//  SwiftAlgoTests
//
//  Created by Davit Siradeghyan on 10/21/19.
//  Copyright © 2019 Davit. All rights reserved.
//

import XCTest

class SwiftAlgoTestsBounds: XCTestCase {

    var elements = [51, 8, 10, 9, -4, 1, 0, 983, 88]

    func testLowerBound1() {
        let result = SwiftAlgo.lower_bound(container: elements, element: 9,
                                           startIndex: 0, endIndex: elements.count)
        XCTAssertEqual(result, 8)
    }
    
    func testLowerBound2() {
        let result = SwiftAlgo.lower_bound(container: elements, element: -4,
                                           startIndex: 0, endIndex: elements.count)
        XCTAssertEqual(result, nil)
    }
    
    func testLowerBound3() {
        let result = SwiftAlgo.lower_bound(container: elements, element: 9,
                                           startIndex: -1, endIndex: 2)
        XCTAssertEqual(result, nil)
    }
    
    func testLowerBound4() {
        let result = SwiftAlgo.lower_bound(container: elements, element: 9,
                                           startIndex: 0, endIndex: 2)
        XCTAssertEqual(result, nil)
    }
    
    func testLowerBound5() {
        let result = SwiftAlgo.lower_bound(container: elements, element: 9,
                                           startIndex: elements.count, endIndex: elements.count + 2)
        XCTAssertEqual(result, nil)
    }
    
    func testUpperBound1() {
        let result = SwiftAlgo.upper_bound(container: elements, element: 51,
                                           startIndex: 0, endIndex: elements.count)
        XCTAssertEqual(result, 8)
    }
    
    func testUpperBound2() {
        let result = SwiftAlgo.upper_bound(container: elements, element: 983,
                                           startIndex: 0, endIndex: elements.count)
        XCTAssertEqual(result, nil)
    }
    
    func testUpperBound3() {
        let result = SwiftAlgo.upper_bound(container: elements, element: 983,
                                           startIndex: -1, endIndex: 3)
        XCTAssertEqual(result, nil)
    }
    
    func testUpperBound4() {
        let result = SwiftAlgo.upper_bound(container: elements, element: 983,
                                           startIndex: 0, endIndex: 3)
        XCTAssertEqual(result, nil)
    }
    
    func testUpperBound5() {
        let result = SwiftAlgo.upper_bound(container: elements, element: 983,
                                           startIndex: elements.count, endIndex: elements.count + 2)
        XCTAssertEqual(result, nil)
    }

}
