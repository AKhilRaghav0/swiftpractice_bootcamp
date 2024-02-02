//
//  animationBootcamp.swift
//  BootCamp
//
//  Created by Akhil on 02/11/23.
//

import SwiftUI

struct animationBootcamp: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.white, Color.cyan], startPoint: .leading, endPoint: .bottomTrailing)
                .ignoresSafeArea()

            VStack{
                
                
                Button(action: {
                        
                        isAnimated.toggle()
                    
                }, label: {
                    Text("Button".uppercased())
                        .font(.headline)
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                        .padding()
                        .padding(.horizontal, 20)
                        .background(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.black, lineWidth: 5) // Add stroke with line width
                        )
                })

                
                
                Spacer()
//                ZStack{
//                    Spacer()
//                    RoundedRectangle(cornerRadius: isAnimated ? 25 : 50)
//                        .fill(isAnimated ? Color.red : Color.green)
//                        .frame(width: isAnimated ? 300:0, height: isAnimated ? 200:300)
//                    Circle()
//    //                RoundedRectangle(cornerRadius: isAnimated ? 25 : 50)
//                        .fill(isAnimated ? Color.red : Color.green)
//                        .frame(width: isAnimated ? 0:350, height: isAnimated ? 0:400)
////                    Spacer()
//
//                }
//                .padding()
                Spacer()
                
                RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                    .fill(isAnimated ? Color.red : Color.green)
                    .frame(width: isAnimated ? 100:300, height: isAnimated ? 100:300)
                    .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                    .offset(y: isAnimated ?  300: 0)
                    .animation(Animation
                        .default
                        .repeatForever(autoreverses: true))
//                Circle
//                RoundedRectangle(cornerRadius: isAnimated ? 25 : 50)
//                    .fill(isAnimated ? Color.red : Color.green)
//                    .frame(width: isAnimated ? 300:10, height: isAnimated ? 200:30)
                Spacer()
            }
        }
    }
}

struct animationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        animationBootcamp()
    }
}
