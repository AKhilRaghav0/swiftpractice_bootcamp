//
//  popOverBootcamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 03/11/23.
//

import SwiftUI

struct popOverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    var body: some View {
        ZStack{
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                Button("Button"){
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
//            //method-1 Sheet
//            .sheet(isPresented: $showNewScreen, content: {
//                newScreen()
//            })
            //Method-2 Transition
//            ZStack{
//                if showNewScreen {
//                    newScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//    //                    .cornerRadius(10)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//
//            }.zIndex(2.0)
            
            //Method-3 Animati0n-offset
            newScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ?  0: UIScreen.main.bounds.height)
                .animation(.spring())

        }
    }
}


struct newScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    var body: some View{
        ZStack(alignment: .topLeading){
            
            Color.purple.edgesIgnoringSafeArea(.all)
            
            Button(action: {
//                presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
                
            })
            
        }
    }
}

struct popOverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        popOverBootcamp()
//        newScreen()
    }
}
