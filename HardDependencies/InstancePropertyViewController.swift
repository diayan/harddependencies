//
//  InstancePropertyViewController.swift
//  HardDependencies
//
//  Created by diayan siat on 14/03/2022.
//

import UIKit

class InstancePropertyViewController: UIViewController {

    //using property injection for dependency injection
    lazy var analytics = Analytics.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        analytics.track(event: "viewDidAppear - \(type(of: self))")
    }
}
