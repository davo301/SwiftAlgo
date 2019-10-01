//
//  SwiftAlgoTestsMismatch.swift
//  SwiftAlgoTests
//
//  Created by Davit Siradeghyan on 9/30/19.
//  Copyright © 2019 Davit. All rights reserved.
//

import XCTest

class SwiftAlgoTestsMismatch: XCTestCase {

    func testHasMismatch1() {
        let arr1 = [1, 3, 5, 7, 9]
        let arr2 = [1, 3, 6, 8, 10]
        
        let res = SwiftAlgo.mismatch(container1: arr1, container2: arr2)
        XCTAssertNotEqual(res.0, res.1)
        XCTAssertEqual(res.0, 5)
        XCTAssertEqual(res.1, 6)
    }
    
    func testHasMismatch2() {
        let arr1 = [1, 3, 5]
        let arr2 = [1, 3, 6]
        
        let res = SwiftAlgo.mismatch(container1: arr1, container2: arr2)
        XCTAssertNotEqual(res.0, res.1)
        XCTAssertEqual(res.0, 5)
        XCTAssertEqual(res.1, 6)
    }
    
    func testHasMismatch3() {
        let arr1 = [1, 3, 5]
        let arr2 = [1, 3, 5, 7, 9]
        
        let res = SwiftAlgo.mismatch(container1: arr1, container2: arr2)
        XCTAssertNotEqual(res.0, res.1)
        XCTAssertNil(res.0)
        XCTAssertEqual(res.1, 7)
    }
    
    func testHasMismatch4() {
        let arr1 = [1, 3, 5, 7, 9]
        let arr2 = [1, 3, 5]
        
        let res = SwiftAlgo.mismatch(container1: arr1, container2: arr2)
        XCTAssertNotEqual(res.0, res.1)
        XCTAssertEqual(res.0, 7)
        XCTAssertNil(res.1)
    }
    
    func testNoMismatch() {
        let arr1 = [1, 3, 5, 7, 9]
        let arr2 = [1, 3, 5, 7, 9]

        let res = SwiftAlgo.mismatch(container1: arr1, container2: arr2)
        XCTAssertNil(res.0)
        XCTAssertNil(res.1)
    }

}
