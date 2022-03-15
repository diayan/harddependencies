//
//  InstancePropertyViewControllerTests.swift
//  InstancePropertyViewControllerTests
//
//  Created by diayan siat on 15/03/2022.
//

import XCTest
@testable import HardDependencies

class InstancePropertyViewControllerTests: XCTestCase {
    func test_doNothing() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let sut: InstancePropertyViewController = storyboard.instantiateViewController(identifier: String(describing: InstancePropertyViewController.self))
        sut.analytics = Analytics()
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
        
        //usually assertion goes here
    }
}
