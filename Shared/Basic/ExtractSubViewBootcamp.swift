//
//  ExtractSubViewBootcamp.swift
//  BootCamp
//
//  Created by Akhil on 31/10/23.
//

import SwiftUI


struct ExtractSubViewBootcamp: View {
    
    var body: some View {
        ZStack{
            Color.cyan.opacity(0.6).ignoresSafeArea()
            contentLayer
            
        }
        
    }
    
    var contentLayer: some View{
        VStack {
            MyItem(title: "Apples", count: 1, color: .red)
            MyItem(title: "Mango", count: 2, color: .yellow)
            MyItem(title: "Oranges", count: 3, color: .orange)
        }
        
    }
}

struct ExtractSubViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubViewBootcamp()
    }
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    
    var body: some View {
        VStack{
            
            HStack {
                Image(systemName: "apple.logo")
                    .font(.largeTitle)
                .foregroundColor(.white)
                
                VStack{
                    Text("\(count)")
                    Text(title)
                }
            }.frame(width: 200, height: 60)
            
                .padding(.horizontal)
                .padding()
                .background(color)
                
                .cornerRadius(10)
                
                .padding(.horizontal)
            
        }
        
    }
}
