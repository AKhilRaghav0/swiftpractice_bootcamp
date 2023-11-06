//
//  ContextMenuBootcamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 06/11/23.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    @State var backgroundColor: Color = Color(hue: 0.633, saturation: 0.875, brightness: 0.481)
    @State var foregroundColor: Color = Color.white
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0){
            
            Image(systemName: "house.fill")
                .font(.title)
            Text("SwiftFUl stuff")
                .font(.headline)
            Text("HOw to use Context Menu")
                .font(.subheadline)
        }
        
        .foregroundColor(foregroundColor)
        .padding(30)
        .background(backgroundColor).cornerRadius(30)
        .contextMenu(menuItems: {
            Button(action: {
                backgroundColor = .yellow
                foregroundColor = .black
            }, label: {
                Label("Share Post", systemImage: "flame.fill")
                
            })
            Button(action: {
                backgroundColor  = .red
                
            }, label: {
                HStack{
                    Text("Report Post")
                    Image(systemName: "exclamationmark.circle")
                        
                    
                }
               
                
            })
            
            Button(action: {
                foregroundColor = .black
                backgroundColor = .green
            }, label: {
                HStack {
                    Text("Like Post")
                    Image(systemName: "heart.fill")
                }
                
            })
        })
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
