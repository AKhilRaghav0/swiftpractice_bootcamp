//
//  MagnificationGestureBootCamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 16/11/23.
//

import SwiftUI

struct MagnificationGestureBootCamp: View {
        
    @State var currentAmount: CGFloat = 0.0
    @State var endAmount: CGFloat = 0.0
    var body: some View {
        VStack (spacing: 10){
            HStack {
                Circle().frame(width: 30, height: 30)
                Text("KrypticBit")
                Spacer()
                Image(systemName: "ellipsis")
                
            }
            .padding()
            Rectangle()
                .frame(height: 300)
                .scaleEffect( 1 + currentAmount)
                .gesture(
                MagnificationGesture()
                    .onChanged { value in
                        currentAmount = value - 1
                    }
                    .onEnded { value in
//                        endAmount += curruntAmount
                            withAnimation(.spring()) {
                                currentAmount = 0
                            }
                        
                    }
                    )
                
                
                
            HStack {
                Image(systemName: "heart.fill").renderingMode(.original)
                Image(systemName: "bubble.right")
                Image(systemName: "aqi.high")
                Spacer()
                Image(systemName: "bookmark")
            }
            .padding(.horizontal)
            .font(.system(size: 23))
            
            Text("This text is Caption")
                .padding(.horizontal)
//                .font(.caption)
                .frame(maxWidth: .infinity, alignment: .leading)
            
        }
        
    }
//    var body: some View {
//        Image("back2")
//            .padding(40)
//            .scaleEffect(1.0 + curruntAmount + endAmount )
//            .gesture(
//            MagnificationGesture()
//                .onChanged { value in
//                    curruntAmount = value - 1
//                }
//                .onEnded { value in
//                    endAmount += curruntAmount
//                    curruntAmount = 0
//                }
//                )
//
//    }
}

struct MagnificationGestureBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        MagnificationGestureBootCamp()
    }
}
