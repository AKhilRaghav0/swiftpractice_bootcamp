//
//  DragGestureBootcamp2.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 25/11/23.
//

import SwiftUI

struct DragGestureBootcamp2: View {
    @State var startingOffsetY: CGFloat = UIScreen.main.bounds.height * 0.85
    @State var currentDragoffsetY : CGFloat = 0
    @State var endingOffsetY: CGFloat = 0
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            DragGestureBootCamp()
            
            MySignupView()
                .offset(y: startingOffsetY)
                .offset(y: currentDragoffsetY)
                .offset(y: endingOffsetY)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            withAnimation(.spring()) {
                                currentDragoffsetY  = value.translation.height
                            }
                            
                        }
                        .onEnded{ value in
                            
                            
                            withAnimation(.spring()) {
                                if currentDragoffsetY < -150 {
                                    endingOffsetY   = -startingOffsetY
                                    currentDragoffsetY = 0
                                } else if endingOffsetY != 0 && startingOffsetY  > 150 {
                                    endingOffsetY  = 0
                                    currentDragoffsetY = 0
                                    
                                }
                                
                                
                                else {
                                    currentDragoffsetY = 0
                                }
                                 
        
                            }
                        }
                )
//            Text("\(currentDragoffsetY)")
            
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

struct DragGestureBootcamp2_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureBootcamp2()
    }
}

struct MySignupView: View {
    
    var body: some View {
        VStack (spacing: 20){
            Image(systemName: "chevron.up")
                .padding(.top)
            Text("Sign Up")
                .font(.headline)
                .fontWeight(.semibold)
            
            Image(systemName: "flame.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            Text("This is the Description of my App, its just a mimic of a tinder app where we used to find gurls but here we only get ladyBois, so deal with them.")
                .multilineTextAlignment(.center)
            
            Text("CREATE AN ACCOUNT")
                .foregroundColor(.white)
                .padding()
                 .padding(.horizontal)
                .background(Color.black.cornerRadius(10))
            
            Spacer()
            //                DragGestureBootCamp()
        }
        .frame(maxWidth: .infinity)
//        .blur(radius: 10).blendMode(.darken)
        .background(Color.white)
        .cornerRadius(30)
    }
}
