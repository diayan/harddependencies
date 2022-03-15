//
//  ClosureInitializerViewController.swift
//  HardDependencies
//
//  Created by diayan siat on 15/03/2022.
//

import UIKit

class ClosureInitializerViewController: UIViewController {
    
    //We’ll start by giving it a closure property set by its initializer. The initializer declares it as an
    //@escaping closure so that it can store it in the property for later execution.
    private let makeAnalytics: ()-> Analytics
    
    //The initializer has a default closure. This lets the vc set its own closure unless a call site passes one in.
    init(makeAnalytics: @escaping () -> Analytics = {Analytics.shared}) {
        self.makeAnalytics = makeAnalytics
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        makeAnalytics().track(event: "viewDidAppear - \(type(of: self))")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
