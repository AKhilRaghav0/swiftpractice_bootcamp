//
//  SwiftUIView.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 16/11/23.
//

import SwiftUI

struct DragGestureBootCamp: View {
    @State var offset: CGSize = .zero
    var body: some View {
        
        RoundedRectangle(cornerRadius: 25)
            .frame(width: 100, height: 100)
            .shadow(radius: 10, x: 0.0, y: 4)
            .overlay(
                Image(systemName: "plus")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            )
            .offset(offset)
        
            .gesture(
                DragGesture()
                    .onChanged{ value in
                        withAnimation(.spring()) {
                            offset = value.translation
                        }
                        
                    }
                    .onEnded { value in
                        withAnimation(.spring()) {
                            offset = .zero
                        }
                        
                        
                        
                    }
                
            )
        
        
    }
}

struct DragGestureBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureBootCamp()
    }
}
