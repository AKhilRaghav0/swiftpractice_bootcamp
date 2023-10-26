//
//  StacksVHZ.swift
//  BootCamp
//
//  Created by Akhil on 25/10/23.
//

import SwiftUI

//let sec_color = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)

struct StacksVHZ: View {
    //VStacks -> Vertical Stack
    //HStack -> Horizontal Stack
    //ZStack -> zIndex [Back to front]
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 350, height: 500, alignment: .center)
            
            VStack{
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(Color.brown)
                    .frame(width: 100, height: 100)
               
                HStack {
                    Rectangle()
                        .fill(Color(hue: 0.612, saturation: 0.611, brightness: 0.9))
                    .frame(width: 50.0, height: 50)
                    
                    Rectangle()
                        .fill(Color(hue: 0.466, saturation: 0.876, brightness: 0.869))
                        .frame(width: 75, height: 75)
                    Rectangle()
                        .fill(Color(hue: 0.805, saturation: 0.828, brightness: 0.965))
                        .frame(width: 50, height: 50)
                }
                
            }
                
            
            
        }
        
        
//        VStack{
//            Rectangle()
//                .fill(
//                    LinearGradient(colors: [Color.indigo, Color.mint], startPoint: .bottomTrailing, endPoint: .topLeading)
//                )
//                .frame(width: 100, height: 100)
//                .cornerRadius(10)
//
//            Rectangle()
//                .fill(
//                    LinearGradient(colors: [Color.cyan, Color.pink], startPoint: .bottomTrailing, endPoint: .topLeading)
//                )
//                .frame(width: 100, height: 100)
//                .cornerRadius(10)
//            Rectangle()
//                .fill(
//                    LinearGradient(colors: [Color.orange, Color.gray], startPoint: .bottomTrailing, endPoint: .topLeading)
//                )
//                .frame(width: 100, height: 100)
//                .cornerRadius(10)
//        }
//        .overlay(
//        HStack {
//            Rectangle()
//                .fill(
//                    LinearGradient(colors: [Color.indigo, Color.mint], startPoint: .bottomTrailing, endPoint: .topLeading)
//                )
//                .frame(width: 100, height: 100)
//                .cornerRadius(10)
//
//            Rectangle()
//                .fill(
//                    LinearGradient(colors: [Color.cyan, Color.pink], startPoint: .bottomTrailing, endPoint: .topLeading)
//                )
//                .frame(width: 100, height: 100)
//                .cornerRadius(10)
//
//            Rectangle()
//                .fill(
//                    LinearGradient(colors: [Color.orange, Color.gray], startPoint: .bottomTrailing, endPoint: .topLeading)
//                )
//                .frame(width: 100, height: 100)
//                .cornerRadius(10)
//
//        }
//        )
        
    }
}

struct StacksVHZ_Previews: PreviewProvider {
    static var previews: some View {
        StacksVHZ()
    }
}
