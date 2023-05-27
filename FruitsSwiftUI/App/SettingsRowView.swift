//
//  SettingsRowView.swift
//  FruitsSwiftUI
//
//  Created by Sévio Basilio Corrêa on 27/05/23.
//

import SwiftUI

struct SettingsRowView: View {
    
    // MARK: - Propriedades
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkedin: String? = nil
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 5)
            HStack {
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkedin != nil) {
                    Link(linkLabel!, destination: URL(string: "\(linkedin!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

// MARK: - Preview

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "Sévio")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
