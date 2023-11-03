//
//  transitionBootcamp.swift
//  BootCamp
//
//  Created by Akhil on 02/11/23.
//

import SwiftUI

struct transitionBootcamp: View {
    
    @State var showView: Bool = false
    
    
    var body: some View {
        ZStack(alignment: .bottom){
            
            LinearGradient(colors: [Color.cyan, Color.gray], startPoint: .leading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Button("Button"){
                    showView.toggle()
                }
                Spacer()
                
            }
            
            if showView {
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.white.opacity(0.4))
                        .blur(radius: 2)
                        .frame(height: UIScreen.main.bounds.height * 0.5) //will use 50% of a screen
//                        .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .bottom)))
//                        .transition(.move(edge: .bottom))
                        .transition(AnyTransition.opacity.animation(.easeInOut))
                        .animation(.spring())
                    .shadow(radius: 20)
                    
                    
                    
                    HStack(alignment: .bottom){
                    Spacer()
                        Button(action: {
                            // Add your button action here
                        }) {
                            Text("Just another label")
                                .foregroundColor(.white)
                                .frame(width: 150, height: 50)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.red)
                                )
                        }

                        Spacer()
                        
                        
                        Button(action: {
                            // Add your button action here
                        }) {
                            Text("Just a label")
                                .foregroundColor(.white)
                                .frame(width: 150, height: 50)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.red)
                                )
                        }
                        Spacer()

                        
                    }
                    
                }

            }
            
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct transitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        transitionBootcamp()
    }
}
