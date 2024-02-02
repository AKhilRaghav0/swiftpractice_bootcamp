//
//  RotationGestureBootCamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 16/11/23.
//

import SwiftUI

struct RotationGestureBootCamp: View {
    @State var angle: Angle = Angle(degrees: 0)
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.headline)
            .fontWeight(.semibold)
            .padding()
            .foregroundColor(.white)
           
            
            .background(Color.gray).cornerRadius(10)
//            .cornerRadius(10)
            .rotationEffect(angle)
            .gesture(
               RotationGesture()
                .onChanged { value in
                     angle = value
                }
                .onEnded { value in
                    withAnimation(.spring()) {
                        angle = Angle(degrees: 0)
                    }
                }
                    
                
            )
    }
}

struct RotationGestureBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        RotationGestureBootCamp()
    }
}
