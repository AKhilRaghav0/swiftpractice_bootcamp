//
//  animationtimingBootcamp.swift
//  BootCamp
//
//  Created by Akhil on 02/11/23.
//

import SwiftUI

struct animationtimingBootcamp: View {
    @State var isAnimating: Bool = false
    let timing: Double = 2.0
    
    var body: some View {
        VStack {
            Button("Button"){
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 250:50, height: 100)
                .animation(.spring(
                    response: 1.0,
                    dampingFraction: 0.4,
                    blendDuration: 2.0))
//                .animation(.spring())
//                .animation(Animation.default)
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350:50, height: 100)
//                .animation(Animation.easeIn(duration: timing))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350:50, height: 100)
//                .animation(Animation.easeInOut(duration: timing))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350:50, height: 100)
//                .animation(Animation.linear(duration: timing))
        }
        
    }
}

struct animationtimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        animationtimingBootcamp()
    }
}
