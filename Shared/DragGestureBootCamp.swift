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
        
        ZStack {
            
            VStack {
                Text("\(offset.width)")
                Spacer()
            }
            
            
            Image("Coldplay")
                .frame(width: 300, height: 500)
            
                .shadow(radius: 10, x: 0.0, y: 4)
//                .blur(radius: <#T##CGFloat#>)
//                .overlay(
//                    Image(systemName: "plus")
//                        .font(.largeTitle)
//                        .foregroundColor(.white)
//                )
                .offset(offset)
                .scaleEffect(getScaleAmount())
                .rotationEffect(Angle(degrees: getRotationAmount()))
            
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
    func getScaleAmount() -> CGFloat {
        let max  = UIScreen.main.bounds.width / 2
        let currentAmount = abs(offset.width)
        let percentage = currentAmount / max
        return 1.0 - min(percentage, 0.5) * 0.5
    }
    func getRotationAmount() -> Double {
        let max = UIScreen.main.bounds.width / 2
        let currentAmount = offset.width
        let percentage = currentAmount / max
        let percentageAsDouble = Double(percentage)
        let maxAngle: Double  = 10
        return percentageAsDouble * maxAngle
        
    }
}

struct DragGestureBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureBootCamp()
    }
}
