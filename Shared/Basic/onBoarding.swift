//
//  onBoarding.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 23/01/24.
//

import SwiftUI
//import OnboardingKit
import Vortex

//extension OnboardingConfiguration {
//    static let prod = Self.init(privacyUrlString: "We watch you 24x7",
//                                accentColor: .red,
//                                features: [])
//}

struct onBoarding: View {
    @State private var showConfetti = false
    var body: some View {
        VStack {
            VortexView(createSnow()) {
                Circle()
                    .fill(.white)
                    .blur(radius: 5)
                    .frame(width: 32)
                    .tag("circle")
            }
            //            if showConfetti {
            //                VortexView(.confetti){
            //                    Circle()
            //                        .fill(.red)
            //                        .frame(width: 32)
            //                        .tag("circle")
            //                    VortexView(.fireworks) {
            //                        Circle()
            //                            .fill(.white)
            //                            .blendMode(.plusLighter)
            //                            .frame(width: 32)
            //                            .tag("circle")
            //                        VortexView(.fire) {
            //                            Circle()
            //                                .fill(.white)
            //                                .blendMode(.plusLighter)
            //                                .blur(radius: 3)
            //                                .frame(width: 32)
            //                                .tag("circle")
            //                        }
            //                    }
            
            
            Button(action: {
                createSnow()
            }, label: {
                Text("Show Custom Confetti")
            })
        }
        
 
    }
    
    func createSnow() -> VortexSystem {
        let system = VortexSystem(tags: ["circle"])
        system.position = [0.5, 0]
        system.speed = 0.5
        system.speedVariation = 0.25
        system.lifespan = 3
        system.shape = .box(width: 1, height: 0)
        system.angle = .degrees(180)
        system.angleRange = .degrees(20)
        system.size = 0.25
        system.sizeVariation = 0.5
        return system
    }
}


#Preview {
    onBoarding()
}

