//
//  StateBootcamp.swift
//  BootCamp
//
//  Created by Akhil on 28/10/23.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 20){
                Text(myTitle)
                    .font(.title)
                Text("\(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20){
                    
                    
                    Button(action: {
                        self.myTitle = "Button #1 pressed"
                        backgroundColor = .gray
                        count += 1
                        
                    }, label: {
                        Text("Button 1".uppercased())
                            .font(.caption)
                            .bold()
                            .foregroundColor(.white)
                            .padding()
                            .padding(.horizontal, 10)
                            .background(
                            Capsule()
                                .stroke(Color.white, lineWidth: 3.0)
                            
                            )
                    })
                    
                    Button(action: {
                        self.myTitle = "Button #2 pressed"
                        backgroundColor = .purple
                        count -= 1
                        
                    }, label: {
                        Text("Button 2".uppercased())
                            .font(.caption)
                            .bold()
                            .foregroundColor(.white)
                            .padding()
                            .padding(.horizontal, 10)
                            .background(
                            Capsule()
                                .stroke(Color.white, lineWidth: 3.0)
                            
                            )
                    })
                    
                }
            }.foregroundColor(.white)
        }
        
        
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
