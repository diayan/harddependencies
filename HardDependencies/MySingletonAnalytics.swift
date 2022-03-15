//
//  MySingletonAnalytics.swift
//  HardDependencies
//
//  Created by diayan siat on 14/03/2022.
//

import Foundation

class MySingletonAnalytics {
    private static let instance = MySingletonAnalytics()
    
    #if DEBUG
    static var stubbedInstance: MySingletonAnalytics?
    #endif

    static var shared: MySingletonAnalytics {
        #if DEBUG
        if let stubbedInstance = stubbedInstance {
            return stubbedInstance
        }
        #endif
        return instance
    }
    
    func track(event: String) {
        Analytics.shared.track(event: event)
        if self !== MySingletonAnalytics.shared {
            print(">> not the MySingletonAnalytics singleton")
        }
        
        if self !== MySingletonAnalytics.instance {
            print(">> not the MySingletonAnalytics singleton")
        }
    }
}
