//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Michael Hoitomt on 7/29/15.
//  Copyright © 2015 Michael Hoitomt. All rights reserved.
//

import UIKit
import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
    // MARK: FoodTracker Tests
    func testMealInitialization() {
        let potentialItem = Meal(name: "Newest Meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty Name is invalid")
        
        let badRating = Meal(name: "Bad Rating", photo: nil, rating: -1)
        XCTAssertNil(badRating)
    }
    
}
