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
    }
    
    func test_countWithPredicate() {
        var count = SwiftAlgo.count(inContainer: intContainer, withPredicate: { $0 > 4 })
        XCTAssertEqual(count, 4)
        
        count = SwiftAlgo.count(inContainer: stringContainer, withPredicate: { $0.contains("aaa") })
        XCTAssertEqual(count, 2)
    }
    
}
