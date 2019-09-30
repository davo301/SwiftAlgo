//
//  SwiftAlgoTestsFindFirstOf.swift
//  SwiftAlgoTests
//
//  Created by Davit Siradeghyan on 9/30/19.
//  Copyright © 2019 Davit. All rights reserved.
//

import XCTest

class SwiftAlgoTestsFindFirstOf: XCTestCase {

    private let containers = TestContainerHelper()

    func testFindFirstOf() {
        var idx = SwiftAlgo.find_first_of(value: 8, inContainer: containers.intContainer)
        XCTAssertEqual(idx, 4)
        
        idx = SwiftAlgo.find_first_of(value: 1900, inContainer: containers.intContainer)
        XCTAssertNil(idx)
        
        idx = SwiftAlgo.find_first_of(value: "xfd", inContainer: containers.stringContainer)
        XCTAssertEqual(idx, 1)
    }

}
