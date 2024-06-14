//
//  Recipes.swift
//  App Interface
//
//  Created by Cindy Chen on 2024-05-30.
//

import SwiftUI

struct Recipes: View {
    private let categories = ["Quick", "On sale", "Pastry", "Fresh", "Protein", "Seafood", "Vegetarian", "Dairy", "Dessert", "On-the-go", "Juices", "Caffeine", "Smoothies", "Tea"]
    @State private var searchResults: [String] = []
    @State private var categoriesSearch = ""
    @State private var recipes = ""
    
    let columns = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10)
    ]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                HStack {
                    Image(systemName: "magnifyingglass")
                    TextField("Search for recipes", text: $categoriesSearch)
                        .padding(.leading, 8)
                }
                .padding()
                .background(Rectangle().foregroundColor(Color(.systemGray5)).cornerRadius(8))
                .padding(.horizontal, 20)
                
                LazyVGrid(columns: columns, spacing: 10) {
                    CategoryView(imageName: "fork.knife", text: "Quick")
                    CategoryView(imageName: "tag", text: "On sale")
                }
                
                Text("Easy recipes")
                    .font(.title)
                    .bold()
                    .padding(.leading, 20)
                
                LazyVGrid(columns: columns, spacing: 10) {
                    CategoryView(imageName: "birthday.cake", text: "Pastry")
                    CategoryView(imageName: "carrot", text: "Fresh")
                    CategoryView(imageName: "fork.knife", text: "Protein")
                    CategoryView(imageName: "fish", text: "Seafood")
                    CategoryView(imageName: "carrot", text: "Vegetarian")
                    CategoryView(imageName: "cup.and.saucer", text: "Dairy")
                    CategoryView(imageName: "birthday.cake", text: "Dessert")
                    CategoryView(imageName: "takeoutbag.and.cup.and.straw", text: "On-the-go")
                }
                
                Text("Beverages")
                    .font(.title)
                    .bold()
                    .padding(.leading, 20)
                
                LazyVGrid(columns: columns, spacing: 10) {
                    CategoryView(imageName: "waterbottle", text: "Juices")
                    CategoryView(imageName: "cup.and.saucer", text: "Caffeine")
                    CategoryView(imageName: "waterbottle", text: "Smoothies")
                    CategoryView(imageName: "mug", text: "Tea")
                }
            }
            .padding()
            .onChange(of: categoriesSearch) { newValue in
                searchResults = categories.filter { $0.localizedCaseInsensitiveContains(newValue) }
            }
        }
        .searchable(text: $categoriesSearch) {
            ForEach(searchResults, id: \.self) { name in
                Button(name) {
                    recipes = name
                }
            }
        }
    }
}

struct CategoryView: View {
    var imageName: String
    var text: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
            Text(text)
                .font(.headline)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color(.systemGray5))
        .cornerRadius(10)
    }
}

#Preview{
        Recipes()
    }

