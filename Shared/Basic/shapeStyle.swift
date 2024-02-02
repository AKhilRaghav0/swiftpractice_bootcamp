//
//  shapeStyle.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 22/01/24.
//

import SwiftUI

struct shapeStyle: View {
    @State private var sliderValue = 0.0
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 16)
//                .fill(.green)
                .stroke(.orange, lineWidth: 1)
                .frame(width: 128, height: 48)

            Capsule()
                .stroke(
                    Color.purple,
                    style: StrokeStyle(
                        lineWidth: 8,
                        lineCap: .round,
                        dash: [55, 15]
                    )
                )
                .frame(width: 128, height: 48)

            Circle()
//                .fill(.yellow)
                .stroke(
                    Color.red,
                    
                    style: StrokeStyle(
                        lineWidth: 7,
                        lineCap: .square,
                        lineJoin: .bevel,
                        dash: [1, 14]
                    )
                )
                .frame(width: 128, height: 48)
            
            Slider(value: $sliderValue, in: 1...100)
                .accentColor(.red)
            Text("the Slider value: \(sliderValue) ")
            
            
        }
        
    }
}

#Preview {
    shapeStyle()
}
