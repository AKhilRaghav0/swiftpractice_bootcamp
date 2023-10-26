//
//  paddingBootcamp.swift
//  BootCamp
//
//  Created by Akhil on 26/10/23.
//

import SwiftUI

struct paddingBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
            .fontWeight(.semibold)
            
            Text("This is the description of what we will do on the screen. it multiple lines and we will align the text to the leading edge.")
                .multilineTextAlignment(.leading)
                .font(.subheadline)
                .padding(.all, 10)
            
        }
//        .background(Color.blue)
        .padding()
        .padding(.vertical, 30)
        .background(
            
            
            Color.white
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.6), radius: 10, x: 0.0, y: 0.0)
                
        )
        
        
        .padding(.horizontal, 10)
//            .frame(maxWidth: .infinity, alignment: .leading)
////            .background(Color.red)
//            .padding(.leading, 20)
        
        //            .background(Color(hue: 0.175, saturation: 0.729, brightness: 0.91))
//            .padding()
//            .padding(.leading, 10)
//            .background(Color.red)
    }
}

struct paddingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        paddingBootcamp()
    }
}
