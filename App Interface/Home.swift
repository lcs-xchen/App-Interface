//
//  Home.swift
//  App Interface
//
//  Created by Cindy Chen on 2024-05-29.
//

import SwiftUI

struct Recipe: Identifiable {
    var id = UUID()
    var imageName: String
    var title: String
    var time: String
}

struct Home: View {
    
    let recipes = [
        Recipe(imageName: "beef", title: "Beef noodle soup", time: "30 minutes"),
        Recipe(imageName: "kimchi", title: "Kimchi Fried Rice", time: "20 minutes"),
        Recipe(imageName: "wrap", title: "Greek inspired wrap", time: "30 minutes"),
        Recipe(imageName: "pasta", title: "Tomato & basil pasta", time: "25 minutes"),
        Recipe(imageName: "eggplant", title: "Eggplant Unagi", time: "30 minutes"),
        Recipe(imageName: "taco", title: "Beef and salad tacos", time: "20 minutes")
    ]
    
    var body: some View {
        ScrollView{
            VStack{
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.myGray)
                        .frame(width: 370, height: 50)
                        .cornerRadius(8)
                    
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                        Text("Search for recipes")
                    }
                    .padding(.trailing, 170)
                }
                
                ZStack {
                    Rectangle()
                        .frame(width: 370, height: 130)
                        .cornerRadius(8)
                        .foregroundColor(.myRed)
                    
                    HStack{
                        VStack{
                            ZStack {
                                Rectangle()
                                    .frame(width: 185, height: 60)
                                    .foregroundColor(.myPink)
                                    .padding(.leading, 3)
                                
                                Text("Discover")
                                    .bold()
                                    .font(.system(size: 20))
                            }
                            
                            Text("Easy breakfast ideas with 3 ingredients")
                                .foregroundColor(.white)
                                .padding(.leading,18)
                        }
                        
                        Image("breakfast")
                            .resizable()
                            .frame(width: 160, height: 110)
                            .padding(.trailing, 20)
                    }
                }
                
                HStack {
                    Text("Try something new")
                        .bold()
                        .padding(.trailing, 115)
                    
                    Text("Explore more")
                        .font(.system(size: 14))
                }
                
                let twoColumns = [GridItem(), GridItem()]
                LazyVGrid(columns: twoColumns) {
                    ForEach(recipes) { recipe in
                        ZStack {
                            Rectangle()
                                .cornerRadius(8)
                                .frame(width: 180, height: 200)
                                .foregroundColor(.myGray)
                            
                            VStack{
                                Image(recipe.imageName)
                                    .resizable()
                                    .frame(width: 140, height: 120)
                                
                                Text(recipe.title)
                                    .bold()
                                    .font(.system(size: 15))
                                
                                Text(recipe.time)
                                    .font(.system(size: 10))
                                
                                ZStack {
                                    Rectangle()
                                        .frame(width: 140, height: 25)
                                        .cornerRadius(6)
                                        .foregroundColor(.myRed)
                                    
                                    Text("Add to Favs")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14))
                                }
                            }
                        }
                    }
                }
                
            }
        }
    }
}
        
#Preview {
    Home()
}
