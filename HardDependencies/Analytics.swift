//
//  Analytics.swift
//  HardDependencies
//
//  Created by diayan siat on 14/03/2022.
//

import Foundation

class Analytics {
    static let shared = Analytics()

    func track(event: String) {
        print(">> " + event)
        
        if self !== Analytics.shared {
            print(">> ...Not the analytics singleton")
        }
    }
    
}
