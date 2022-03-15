//
//  ClosureInitializerViewControllerTests.swift
//  ClosureInitializerViewControllerTests
//
//  Created by diayan siat on 15/03/2022.
//

import XCTest
@testable import HardDependencies

//The test creates the view controller, passing in a closure returning an instance suitable for testing. Run tests.

class ClosureInitializerViewControllerTests: XCTestCase {
    
    func test_viewDidAppear() {
        let sut = ClosureInitializerViewController { Analytics() }
        
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
        
        //usually assertion goes here
    }
}
