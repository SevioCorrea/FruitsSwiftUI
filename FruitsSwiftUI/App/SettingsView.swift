//
//  SettingsView.swift
//  FruitsSwiftUI
//
//  Created by Sévio Basilio Corrêa on 26/05/23.
//

import SwiftUI

struct SettingsView: View {
    
    
    // MARK: - Prpriedades
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - Section 1
                    GroupBox(label: SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")) {
                        Divider().padding(.vertical, 5)
                        
                        HStack(alignment: .center) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(10)
                            
                            Text("Most fruits are natrally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    // MARK: - Section 2
                    GroupBox(label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")) {
                        Divider().padding(.vertical, 5)
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the oonboarding again and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            Text("Restart".uppercased())
                                .fontWeight(.bold)
                                .foregroundColor(Color.secondary)
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    }
                    
                    // MARK: - Section 3
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")) {
                        
                        SettingsRowView(name: "Developer", content: "Sévio")
                        SettingsRowView(name: "Designer", content: "Sévio")
                        SettingsRowView(name: "LinkedIn", linkLabel: "SevioCorrea", linkedin: "https://www.linkedin.com/in/seviocorrea/")
                        SettingsRowView(name: "Version", content: "1.1.0")
                        
                    }
                    
                } //: VStack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
                
                .padding()
            } //: Scroll
        } //: Navigation
    }
}

// MARK: - Preview

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
