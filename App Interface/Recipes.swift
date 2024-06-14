//
//  Recipes.swift
//  App Interface
//
//  Created by Cindy Chen on 2024-05-30.
//

import SwiftUI

struct Recipes: View {
    private let categories = ["Quick", "On sale", "Pastry", "Fresh", "Protein", "Seafood", "Vegetarian", "Dairy", "Dessert", "On-the-go", "Juices", "Caffeine", "Smoothies", "Tea"]
    @State private var categoriesSearch = ""
    
    let columns = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10)
    ]
    
    var filteredCategories: [String] {
        if categoriesSearch.isEmpty {
            return categories
        } else {
            return categories.filter { $0.localizedCaseInsensitiveContains(categoriesSearch) }
        }
    }
    
    var easyRecipes: [String] {
        filteredCategories.filter { ["Pastry", "Fresh", "Protein", "Seafood", "Vegetarian", "Dairy", "Dessert", "On-the-go"].contains($0) }
    }
    
    var beverages: [String] {
        filteredCategories.filter { ["Juices", "Caffeine", "Smoothies", "Tea"].contains($0) }
    }
    
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
                .padding(.horizontal)
                
                LazyVGrid(columns: columns, spacing: 10) {
                    CategoryView(imageName: "fork.knife", text: "Quick")
                    CategoryView(imageName: "tag", text: "On sale")
                }
                .padding(.horizontal)
                
                Text("Easy recipes")
                    .font(.title)
                    .bold()
                    .padding(.leading)
                
                LazyVGrid(columns: columns, spacing: 10) {
                    ForEach(easyRecipes, id: \.self) { category in
                        CategoryView(imageName: imageName(for: category), text: category)
                    }
                }
                .padding(.horizontal)
                
                Text("Beverages")
                    .font(.title)
                    .bold()
                    .padding(.leading)
                
                LazyVGrid(columns: columns, spacing: 10) {
                    ForEach(beverages, id: \.self) { category in
                        CategoryView(imageName: imageName(for: category), text: category)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
    
    func imageName(for category: String) -> String {
        switch category {
        case "Quick":
            return "fork.knife"
        case "On sale":
            return "tag"
        case "Pastry":
            return "birthday.cake"
        case "Fresh", "Vegetarian":
            return "carrot"
        case "Protein":
            return "fork.knife"
        case "Seafood":
            return "fish"
        case "Dairy":
            return "cup.and.saucer"
        case "Dessert":
            return "birthday.cake"
        case "On-the-go":
            return "takeoutbag.and.cup.and.straw"
        case "Juices", "Smoothies":
            return "waterbottle"
        case "Caffeine":
            return "cup.and.saucer"
        case "Tea":
            return "mug"
        default:
            return "fork.knife"
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

#Preview {
    Recipes()
}
