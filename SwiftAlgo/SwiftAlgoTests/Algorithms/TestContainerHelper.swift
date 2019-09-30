//
//  TestContainerHelper.swift
//  SwiftAlgoTests
//
//  Created by Davit Siradeghyan on 9/30/19.
//  Copyright © 2019 Davit. All rights reserved.
//

import Foundation

final class TestContainerHelper {
    
    var intContainer = [Int]()
    var stringContainer = [String]()
    var customClassContainer = [CustomClass]()
    var testStructBasicTypes = [TestStructBasicTypes]()
    var testStructCustomTypes = [TestStructCustomTypes]()
    
    init() {
        setupIntContainer()
        setupStringContainer()
        setupCustomClassContainer()
        setupTestStructBasicTypes()
        setupTestStructCustomTypes()
    }
    
    // MARK: Setup
    
    private func setupIntContainer() {
        intContainer = [1, 5, 3, 7, 8, 8, 4, 1, 2, 1]
    }
    
    private func setupStringContainer() {
        stringContainer = ["aaa", "xfd", "aaaXXXX", "people", "xfd"]
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
    
}
