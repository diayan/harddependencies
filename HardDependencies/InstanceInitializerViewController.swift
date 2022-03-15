//
//  InstanceInitializerViewController.swift
//  HardDependencies
//
//  Created by diayan siat on 15/03/2022.
//

import UIKit

class InstanceInitializerViewController: UIViewController {

    private let analytics: Analytics
    
    //this is using constructor injection
    init(analytics: Analytics = Analytics.shared) {
        self.analytics = analytics
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        analytics.track(event: "viewDidAppear - \(type(of: self))")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
