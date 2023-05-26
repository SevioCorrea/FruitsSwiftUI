//
//  ContentView.swift
//  FruitsSwiftUI
//
//  Created by Sévio Basilio Corrêa on 17/05/23.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Propriedades
    @State private var isShowingSettings: Bool = false
    var fruits: [Fruit] = fruitsData
    
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.sorted(by: { $0.title < $1.title })) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing: Button(action: {
                isShowingSettings = true
                }) {
                    Image(systemName: "slider.horizontal.3")
                } //: Button
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
            )
        } //: Navigation
    }
}


// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
