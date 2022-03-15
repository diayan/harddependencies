//
//  InstanceIntializerViewControllerTests.swift
//  InstanceIntializerViewControllerTests
//
//  Created by diayan siat on 15/03/2022.
//

import XCTest
@testable import HardDependencies

class InstanceIntializerViewControllerTests: XCTestCase {
    
    func test_viewDidAppear() {
        let sut = InstanceInitializerViewController(analytics: Analytics())
        
        sut.loadViewIfNeeded()
        sut.viewDidAppear(false)
        
        //normally there will be an assertion here
    }
}
