//
//  StartButtonView.swift
//  FruitsSwiftUI
//
//  Created by Sévio Basilio Corrêa on 22/05/23.
//

import SwiftUI

struct StartButtonView: View {
    
    // MARK: - Propriedades
    
    // MARK: - Body
    var body: some View {
        Button(action: {
            print("Sair do Onboarding.")
        }) {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        } //: Botão
        .accentColor(Color.white)
    }
}

// MARK: - Prveiew

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
