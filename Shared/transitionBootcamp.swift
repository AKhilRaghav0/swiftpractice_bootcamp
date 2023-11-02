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
            VStack{
                Button("Button"){
                    showView.toggle()
                }
                Spacer()
                
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.white)
                    .frame(height: UIScreen.main.bounds.height * 0.5) //will use 50% of a screen
                    .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .bottom)))
//                    .transition(.move(edge: .bottom))
//                    .transition(AnyTransition.opacity.animation(.easeInOut))
                    .animation(.spring())
                    .shadow(radius: 20)

            }
            
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct transitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        transitionBootcamp()
    }
}
