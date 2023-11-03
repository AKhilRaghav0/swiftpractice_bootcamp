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
            
            LinearGradient(colors: [Color.red, Color.gray], startPoint: .leading, endPoint: .bottomTrailing)
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
                        .blur(radius: 0.3)
                        .frame(height: UIScreen.main.bounds.height * 0.5) //will use 50% of a screen
//                        .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .bottom)))
//                        .transition(.move(edge: .bottom))
                        .transition(AnyTransition.opacity.animation(.easeInOut))
                        .animation(.spring())
                    .shadow(radius: 10)
                    
                    
                    
                    VStack {
                        Text("This is just a random text to check the button positions on my rounded button, it should be on the right positon if i add Spacer after that, lets see what will goona happen if i do that")
                            .font(.system(size: 24))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding()
                            
                        
                        HStack(alignment: .bottom){
                        Spacer()
                            Button(action: {
                                // Add your button action here
                            }) {
                                Text("Just another label")
                                    .bold()
                                    .foregroundColor(.white)
                                    .frame(maxWidth: 160, maxHeight: 70)
                                    .background(
                                        Color.gray.cornerRadius(10)
                                    )
                            }

                            Spacer()
                            
                            
                            Button(action: {
                                // Add your button action here
                            }) {
                                Text("Just a label")
                                    .bold()
                                    .foregroundColor(.white)
                                    .frame(width: 150, height: 50)
                                    .background(Color.red.cornerRadius(10)
                                    )
                            }
                            Spacer()

                            
                        }
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
