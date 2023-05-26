//
//  SettingsLabelView.swift
//  FruitsSwiftUI
//
//  Created by Sévio Basilio Corrêa on 26/05/23.
//

import SwiftUI

struct SettingsLabelView: View {
    
    // MARK: - Propriedades
    var labelText: String
    var labelImage: String
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

// MARK: - Preview

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
