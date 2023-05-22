//
//  OnboardingView.swift
//  FruitsSwiftUI
//
//  Created by Sévio Basilio Corrêa on 22/05/23.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: - Propriedades
    
    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                FruitCardView()
            } //: Loop
        } //: TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - Preview

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
