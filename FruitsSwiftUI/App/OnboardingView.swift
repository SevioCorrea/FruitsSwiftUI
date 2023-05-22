//
//  OnboardingView.swift
//  FruitsSwiftUI
//
//  Created by Sévio Basilio Corrêa on 22/05/23.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: - Propriedades
    var fruits: [Fruit] = fruitsData
    
    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            } //: Loop
        } //: TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - Preview

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
