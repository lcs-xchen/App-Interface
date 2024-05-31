//
//  Favourites.swift
//  App Interface
//
//  Created by Cindy Chen on 2024-05-31.
//

import SwiftUI

struct Favourites: View {
    let columns = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10)
    ]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.myGray)
                        .frame(width: 370, height: 50)
                        .cornerRadius(8)
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                        Text("Search for recipes")
                    }
                }
                .padding(.leading,10)
                
                LazyVGrid(columns: columns, spacing: 10) {
                    CategoryView(imageName: "birthday.cake", text: "Pastry")
                    CategoryView(imageName: "carrot", text: "Fresh")
                }
                .padding(.leading,10)
                .padding(.trailing,10)
                
                LazyVGrid(columns: columns, spacing: 10) {
                    CategoryView(imageName: "fork.knife", text: "Protein")
                    CategoryView(imageName: "fish", text: "Seafood")
                }
                .padding(.leading,10)
                .padding(.trailing,10)
                
                Text("Reorder")
                    .bold()
                    .font(.system(size: 25))
                    .padding(.leading,10)
                
                let twoColumns = [GridItem(), GridItem()]
                LazyVGrid(columns: twoColumns) {
                    ZStack {
                        Rectangle()
                            .cornerRadius(8)
                            .frame(width: 180, height: 200)
                            .foregroundColor(.myGray)
                        
                        VStack{
                            Image("beef")
                                .resizable()
                                .frame(width: 140, height: 120)
                            
                            Text("Beef noodle soup")
                                .bold()
                                .font(.system(size: 15))
                            
                            Text("30 minutes")
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
                    
                    ZStack {
                        Rectangle()
                            .cornerRadius(8)
                            .frame(width: 180, height: 200)
                            .foregroundColor(.myGray)
                        
                        ZStack {
                            Rectangle()
                                .cornerRadius(8)
                                .frame(width: 180, height: 200)
                                .foregroundColor(.myGray)
                            
                            VStack{
                                Image("kimchi")
                                    .resizable()
                                    .frame(width: 140, height: 120)
                                
                                Text("Kimchi Fried Rice")
                                    .bold()
                                    .font(.system(size: 15))
                                
                                Text("20 minutes")
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
                    
                    ZStack {
                        Rectangle()
                            .cornerRadius(8)
                            .frame(width: 180, height: 200)
                            .foregroundColor(.myGray)
                        
                        VStack{
                            Image("wrap")
                                .resizable()
                                .frame(width: 140, height: 120)
                            
                            Text("Greek inspired wrap")
                                .bold()
                                .font(.system(size: 15))
                            
                            Text("30 minutes")
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
                    
                    ZStack {
                        
                        Rectangle()
                            .cornerRadius(8)
                            .frame(width: 180, height: 200)
                            .foregroundColor(.myGray)
                        
                        VStack{
                            Image("pasta")
                                .resizable()
                                .frame(width: 140, height: 120)
                            
                            Text("Tomato & basil pasta")
                                .bold()
                                .font(.system(size: 15))
                            
                            Text("25 minutes")
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
                    
                    ZStack {
                        Rectangle()
                            .cornerRadius(8)
                            .frame(width: 180, height: 200)
                            .foregroundColor(.myGray)
                        
                        VStack{
                            Image("eggplant")
                                .resizable()
                                .frame(width: 140, height: 120)
                            
                            Text("Eggplant Unagi")
                                .bold()
                                .font(.system(size: 15))
                            
                            Text("30 minutes")
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
                    
                    ZStack {
                        Rectangle()
                            .cornerRadius(8)
                            .frame(width: 180, height: 200)
                            .foregroundColor(.myGray)
                        
                        VStack{
                            Image("taco")
                                .resizable()
                                .frame(width: 140, height: 120)
                            
                            Text("Beef and salad tacos")
                                .bold()
                                .font(.system(size: 15))
                            
                            Text("20 minutes")
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

#Preview {
    Favourites()
}

