//
//  NRFruitsApp.swift
//  NRFruits
//
//  Created by Tai Phan Van on 02/08/2021.
//

import SwiftUI

@main
struct NRFruitsApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
