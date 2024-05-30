//
//  Home.swift
//  App Interface
//
//  Created by Cindy Chen on 2024-05-29.
//

import SwiftUI

struct Home: View {
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
    Home()
}

