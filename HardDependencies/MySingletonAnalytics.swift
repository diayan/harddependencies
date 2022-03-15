//
//  MySingletonAnalytics.swift
//  HardDependencies
//
//  Created by diayan siat on 14/03/2022.
//

import Foundation

class MySingletonAnalytics {
    static let shared = MySingletonAnalytics()
    
    func track(event: String) {
        Analytics.shared.track(event: event)
        
        if self !== MySingletonAnalytics.shared {
            print(">> not the MySingletonAnalytics singleton")
        }
    }
}
