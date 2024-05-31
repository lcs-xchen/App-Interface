//
//  Shopping.swift
//  App Interface
//
//  Created by Cindy Chen on 2024-05-31.
//
import SwiftUI

struct Shopping: View {
    var body: some View {
        
        ScrollView {
            VStack(spacing: 20) {
                let oneColumn = [GridItem()]
                LazyVGrid(columns: oneColumn) {
                    
                    ZStack {
                        Rectangle()
                            .foregroundColor(.myGray)
                            .cornerRadius(10)
                            .padding(.horizontal)
                        
                        HStack {
                            Image("spaghetti")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 70, height: 70)
                            
                            VStack(alignment: .leading, spacing: 5) {
                                Text("Gluten Free Spaghetti Pasta")
                                    .font(.system(size: 18))
                                    .bold()
                                
                                HStack {
                                    ZStack {
                                        Rectangle()
                                            .foregroundColor(.myWhite)
                                            .cornerRadius(8)
                                            .frame(width: 80, height: 25)
                                        
                                        HStack {
                                            Image(systemName: "plus")
                                            
                                            Text("2")
                                            
                                            Image(systemName: "minus")
                                        }
                                        .padding(EdgeInsets(top: 2, leading: 2, bottom: 2, trailing: 2))
                                    }
                                    .padding(.trailing, 20)
                                    
                                    Text("$5.38")
                                        .bold()
                                }
                            }
                            Spacer()
                        }
                        .padding(.horizontal)
                        .padding(.leading, 15)
                    }
                    .frame(height: 100)
                    
                    ZStack {
                        Rectangle()
                            .foregroundColor(.myGray)
                            .cornerRadius(10)
                            .padding(.horizontal)
                        
                        HStack {
                            Image("basil")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 70, height: 70)
                            
                            VStack(alignment: .leading, spacing: 5) {
                                Text("Basil leaves")
                                    .font(.system(size: 18))
                                    .bold()
                                
                                HStack {
                                    ZStack {
                                        Rectangle()
                                            .foregroundColor(.myWhite)
                                            .cornerRadius(8)
                                            .frame(width: 80, height: 25)
                                        
                                        HStack {
                                            Image(systemName: "plus")
                                            
                                            Text("1")
                                            
                                            Image(systemName: "minus")
                                        }
                                        .padding(EdgeInsets(top: 2, leading: 2, bottom: 2, trailing: 2))
                                    }
                                    .padding(.trailing, 20)
                                    
                                    Text("$1.49")
                                        .bold()
                                }
                            }
                            Spacer()
                        }
                        .padding(.horizontal)
                        .padding(.leading, 15)
                    }
                    .frame(height: 100)
                    
                    ZStack {
                        Rectangle()
                            .foregroundColor(.myGray)
                            .cornerRadius(10)
                            .padding(.horizontal)
                        
                        HStack {
                            Image("tomatoPaste")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 70, height: 70)
                            
                            VStack(alignment: .leading, spacing: 5) {
                                Text("Tomato Paste")
                                    .font(.system(size: 18))
                                    .bold()
                                
                                HStack {
                                    ZStack {
                                        Rectangle()
                                            .foregroundColor(.myWhite)
                                            .cornerRadius(8)
                                            .frame(width: 80, height: 25)
                                        
                                        HStack {
                                            Image(systemName: "plus")
                                            
                                            Text("1")
                                            
                                            Image(systemName: "minus")
                                        }
                                        .padding(EdgeInsets(top: 2, leading: 2, bottom: 2, trailing: 2))
                                    }
                                    .padding(.trailing, 20)
                                    
                                    Text("$1.59")
                                        .bold()
                                }
                            }
                            Spacer()
                        }
                        .padding(.horizontal)
                        .padding(.leading, 15)
                    }
                    .frame(height: 100)
                    
                    ZStack{
                        Rectangle()
                            .foregroundColor(.myGray)
                            .frame(width: 362, height: 200)
                            .cornerRadius(10)
                            .padding(.horizontal)
                        
                        let twoColumn = [GridItem(),GridItem()]
                        LazyVGrid(columns: twoColumn) {
                            
                            HStack{
                                
                                Text("Subtotal")
                                    
                                Text("$8.46")
                            }
                            
                            
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    Shopping()
}
