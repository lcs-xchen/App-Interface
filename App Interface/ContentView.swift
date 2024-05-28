//
//  ContentView.swift
//  App Interface
//
//  Created by Cindy Chen on 2024-05-24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        VStack{
            Text("BoardingBite")
                .padding(.trailing, 222)
                .bold()
                .font(.system(size: 24))
            
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
                    
                    Rectangle()
                        .frame(width: 160, height: 100)
                        .padding(.trailing, 20)
                    
                }
            }
        
        }
    }
}

    
#Preview {
    ContentView()
}
