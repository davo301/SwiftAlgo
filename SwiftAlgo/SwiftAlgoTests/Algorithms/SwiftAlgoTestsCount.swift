//
//  SwiftAlgoTests.swift
//  SwiftAlgoTests
//
//  Created by Davit Siradeghyan on 2/1/18.
//  Copyright © 2018 Davit. All rights reserved.
//

import XCTest

class SwiftAlgoTestsCount: XCTestCase {
    
    private let containers = TestContainerHelper()
    
    // MARK: Test methods
    
    func test_count() {
        var count = SwiftAlgo.count(value: 1, inContainer: containers.intContainer)
        XCTAssertEqual(count, 3)
        
        count = SwiftAlgo.count(value: "aaa", inContainer: containers.stringContainer)
        XCTAssertEqual(count, 1)
        
        count = SwiftAlgo.count(value: CustomClass(name: "Alex", score: 5), inContainer: containers.customClassContainer)
        XCTAssertEqual(count, 0)
        
        count = SwiftAlgo.count(value: CustomClass(name: "Alex", score: 3.1), inContainer: containers.customClassContainer)
        XCTAssertEqual(count, 1)
        
        count = SwiftAlgo.count(value: TestStructBasicTypes(name: "Alex", score: 4.2), inContainer: containers.testStructBasicTypes)
        XCTAssertEqual(count, 2)
        
        count = SwiftAlgo.count(value: TestStructCustomTypes(ID: 3, object: CustomClass(name: "Alex", score: 4.2)), inContainer: containers.testStructCustomTypes)
        XCTAssertEqual(count, 1)
    }
    
    func test_countWithPredicate() {
        var count = SwiftAlgo.count(inContainer: containers.intContainer, withPredicate: { $0 > 4 })
        XCTAssertEqual(count, 4)
        
        count = SwiftAlgo.count(inContainer: containers.stringContainer, withPredicate: { $0.contains("aaa") })
        XCTAssertEqual(count, 2)
        
        count = SwiftAlgo.count(inContainer: containers.customClassContainer, withPredicate: { $0.score > 3 })
        XCTAssertEqual(count, 3)
        
        count = SwiftAlgo.count(inContainer: containers.testStructBasicTypes, withPredicate: { $0.score > 3 })
        XCTAssertEqual(count, 4)
        
        count = SwiftAlgo.count(inContainer: containers.testStructCustomTypes, withPredicate: { $0.ID > 2 })
        XCTAssertEqual(count, 2)
    }
    
}
