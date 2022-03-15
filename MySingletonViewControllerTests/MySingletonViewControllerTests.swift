//
//  MySingletonViewControllerTests.swift
//  MySingletonViewControllerTests
//
//  Created by diayan siat on 15/03/2022.
//

import XCTest
@testable import HardDependencies

class MySingletonViewControllerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        MySingletonAnalytics.stubbedInstance = MySingletonAnalytics()
    }
    
    override class func tearDown() {
        MySingletonAnalytics.stubbedInstance = nil
        super.tearDown()
    }
    
    func test_viewDidAppear() {
        let sut = MySingletonViewController()
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
    }
}
