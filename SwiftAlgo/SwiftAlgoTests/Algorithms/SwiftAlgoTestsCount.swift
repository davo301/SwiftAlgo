//
//  SwiftAlgoTests.swift
//  SwiftAlgoTests
//
//  Created by Davit Siradeghyan on 2/1/18.
//  Copyright © 2018 Davit. All rights reserved.
//

import XCTest

class SwiftAlgoTestsCount: XCTestCase {
    
    private var intContainer = [Int]()
    private var stringContainer = [String]()
    private var customClassContainer = [CustomClass]()
    private var testStructBasicTypes = [TestStructBasicTypes]()
    private var testStructCustomTypes = [TestStructCustomTypes]()
    
    override func setUp() {
        super.setUp()
        setupIntContainer()
        setupStringContainer()
        setupCustomClassContainer()
        setupTestStructBasicTypes()
        setupTestStructCustomTypes()
    }
    
    // MARK: Setup utilities
    
    private func setupIntContainer() {
        intContainer = [1, 5, 3, 7, 8, 8, 4, 1, 2, 1]
    }
    
    private func setupStringContainer() {
        stringContainer = ["aaa", "xfd", "aaaXXXX", "people"]
    }
    
    private func setupCustomClassContainer() {
        customClassContainer.append(CustomClass(name: "John", score: 4.65))
        customClassContainer.append(CustomClass(name: "David", score: 4))
        customClassContainer.append(CustomClass(name: "Alex", score: 3.1))
        customClassContainer.append(CustomClass(name: "Karine", score: 2.2))
    }
    
    private func setupTestStructBasicTypes() {
        testStructBasicTypes.append(TestStructBasicTypes(name: "John", score: 2.56))
        testStructBasicTypes.append(TestStructBasicTypes(name: "David", score: 4))
        testStructBasicTypes.append(TestStructBasicTypes(name: "Alex", score: 4.2))
        testStructBasicTypes.append(TestStructBasicTypes(name: "Karine", score: 3.35))
        testStructBasicTypes.append(TestStructBasicTypes(name: "Alex", score: 4.2))
    }
    
    private func setupTestStructCustomTypes() {
        testStructCustomTypes.append(TestStructCustomTypes(ID: 1, object: CustomClass(name: "John", score: 4.65)))
        testStructCustomTypes.append(TestStructCustomTypes(ID: 2, object: CustomClass(name: "David", score: 4)))
        testStructCustomTypes.append(TestStructCustomTypes(ID: 3, object: CustomClass(name: "Alex", score: 4.2)))
        testStructCustomTypes.append(TestStructCustomTypes(ID: 4, object: CustomClass(name: "Karine", score: 2.2)))
    }
    
    // MARK: Test methods
    
    func test_count() {
        var count = SwiftAlgo.count(value: 1, inContainer: intContainer)
        XCTAssertEqual(count, 3)
        
        count = SwiftAlgo.count(value: "aaa", inContainer: stringContainer)
        XCTAssertEqual(count, 1)
        
        count = SwiftAlgo.count(value: CustomClass(name: "Alex", score: 5), inContainer: customClassContainer)
        XCTAssertEqual(count, 0)
        
        count = SwiftAlgo.count(value: CustomClass(name: "Alex", score: 3.1), inContainer: customClassContainer)
        XCTAssertEqual(count, 1)
        
        count = SwiftAlgo.count(value: TestStructBasicTypes(name: "Alex", score: 4.2), inContainer: testStructBasicTypes)
        XCTAssertEqual(count, 2)
        
        count = SwiftAlgo.count(value: TestStructCustomTypes(ID: 3, object: CustomClass(name: "Alex", score: 4.2)), inContainer: testStructCustomTypes)
        XCTAssertEqual(count, 1)
    }
    
    func test_countWithPredicate() {
        var count = SwiftAlgo.count(inContainer: intContainer, withPredicate: { $0 > 4 })
        XCTAssertEqual(count, 4)
        
        count = SwiftAlgo.count(inContainer: stringContainer, withPredicate: { $0.contains("aaa") })
        XCTAssertEqual(count, 2)
        
        count = SwiftAlgo.count(inContainer: customClassContainer, withPredicate: { $0.score > 3 })
        XCTAssertEqual(count, 3)
        
        count = SwiftAlgo.count(inContainer: testStructBasicTypes, withPredicate: { $0.score > 3 })
        XCTAssertEqual(count, 4)
        
        count = SwiftAlgo.count(inContainer: testStructCustomTypes, withPredicate: { $0.ID > 2 })
        XCTAssertEqual(count, 2)
    }
    
}
