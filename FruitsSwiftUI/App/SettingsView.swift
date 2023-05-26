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
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - Section 1
                    GroupBox(label: SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
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
                    
                    // MARK: - Section 3
                    
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
