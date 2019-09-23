//
//  CustomTypes.swift
//  SwiftAlgoTests
//
//  Created by Davit on 2/8/18.
//  Copyright © 2018 Davit. All rights reserved.
//

import Foundation

final class CustomClass: Equatable {
    
    var name: String
    var score: Double
    
    init(name: String, score: Double) {
        self.name = name
        self.score = score
    }
    
}

func ==(lhs: CustomClass, rhs: CustomClass) -> Bool {
    return lhs.name == rhs.name && lhs.score == rhs.score
}

struct TestStructBasicTypes: Equatable {
    var name: String
    var score: Double
}

func ==(lhs: TestStructBasicTypes, rhs: TestStructBasicTypes) -> Bool {
    return lhs.name == rhs.name && lhs.score == rhs.score
}

struct TestStructCustomTypes: Equatable {
    var ID: Int
    var object: CustomClass
}

func ==(lhs: TestStructCustomTypes, rhs: TestStructCustomTypes) -> Bool {
    return lhs.object == rhs.object
}
