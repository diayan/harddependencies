//
//  ClosureInitializerViewController.swift
//  HardDependencies
//
//  Created by diayan siat on 15/03/2022.
//

import UIKit

class ClosureInitializerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        Analytics.shared.track(event: "viewDidAppear - \(type(of: self))")
    }
}
