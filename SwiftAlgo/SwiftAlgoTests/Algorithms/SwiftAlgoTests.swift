//
//  SwiftAlgoTests.swift
//  SwiftAlgoTests
//
//  Created by Davit Siradeghyan on 2/1/18.
//  Copyright © 2018 Davit. All rights reserved.
//

import XCTest

class SwiftAlgoTests: XCTestCase {
    
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
        
    }
    
    private func setupTestStructCustomTypes() {
        
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
    }
    
    func test_countWithPredicate() {
        var count = SwiftAlgo.count(inContainer: intContainer, withPredicate: { $0 > 4 })
        XCTAssertEqual(count, 4)
        
        count = SwiftAlgo.count(inContainer: stringContainer, withPredicate: { $0.contains("aaa") })
        XCTAssertEqual(count, 2)
        
        count = SwiftAlgo.count(inContainer: customClassContainer, withPredicate: { $0.score > 3 })
        XCTAssertEqual(count, 3)
    }
    
}
