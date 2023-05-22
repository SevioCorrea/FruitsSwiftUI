//
//  FruitsSwiftUIApp.swift
//  FruitsSwiftUI
//
//  Created by Sévio Basilio Corrêa on 17/05/23.
//

import SwiftUI

@main
struct FruitsSwiftUIApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
//            ContentView()
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
