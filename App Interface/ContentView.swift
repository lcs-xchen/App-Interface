//
//  ContentView.swift
//  App Interface
//
//  Created by Cindy Chen on 2024-05-24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        TabView{
            Home()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                } .tag(1)
            
            Recipes()
                .tabItem {
                    Image(systemName: "fork.knife")
                    Text("Recipes")
                } .tag(2)
            
            Favourites()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favourites")
                } .tag(3)
            
            ShoppingList()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Shopping")
                } .tag(4)
        }
        .accentColor(.myRed)
        
        
    }
}
    
#Preview {
    ContentView()
}
