//
//  ButtonsBootcamp.swift
//  BootCamp
//
//  Created by Akhil on 28/10/23.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            Button("Press Me!"){
                self.title = "Button was pressed"
                
            }
            .accentColor(.red)
            
            Button(action: {
                self.title = "Button 2 was pressed"
            }, label: {
//                RoundedRectangle(cornerRadius: 25)
//                    .frame(maxWidth: 20, maxHeight: 30)
                Text("save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(11)
                            .shadow(radius: 10)
                            
                    )
            })
            
            Button(action: {
                self.title = "Button #3 pressed"
                
            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .renderingMode(.original)
                            .font(.largeTitle)
                    )
            })
            
            Button(action: {
                self.title = "Button #4 pressed"
                
            }, label: {
                Text("Finsish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                    Capsule()
                        .stroke(Color.gray, lineWidth: 3.0)
                    
                    )
            })
        
        }
    }
}

struct ButtonsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsBootcamp()
    }
}
