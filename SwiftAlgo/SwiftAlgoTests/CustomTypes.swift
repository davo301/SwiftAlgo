//
//  CustomTypes.swift
//  SwiftAlgoTests
//
//  Created by Davit on 2/8/18.
//  Copyright © 2018 Davit. All rights reserved.
//

import Foundation

final class CustomClass: Equatable {
    
    private var name: String
    private var score: Double
    
    init(name: String, score: Double) {
        self.name = name
        self.score = score
    }
    
    func ==(lhs: CustomClass, rhs: CustomClass) -> Bool {
        return lhs.name == rhs.name && lhs.score == rhs.score
    }
    
}

struct TestStructBasicTypes {
    var name: String
    var score: Double
}

struct TestStructCustomTypes {
    var ID: Int
    var object: CustomClass
}
