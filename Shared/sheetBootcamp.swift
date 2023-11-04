//
//  sheetBootcamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 03/11/23.
//

import SwiftUI

struct sheetBootcamp: View {
    @State var showSheet: Bool = false
    
    
    var body: some View {
        ZStack{
            
            Color.green.edgesIgnoringSafeArea(.all)
            
            Button(action: {
                showSheet.toggle()
                
            }, label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
                
                
            })
            
//            .sheet(isPresented: $showSheet, content: {
//                Second
//            })
            .fullScreenCover(isPresented: $showSheet, content: {
                SecondView()
            })
            
        }
    }
}


struct SecondView: View {
    @Environment(\.presentationMode) var presentatoinMode
    
    
    var body: some View {
        
        
        
        ZStack(alignment: .topLeading) {
            
                
                Color.red.edgesIgnoringSafeArea(.all)
                
                Button(action: {
//                    showSheet.toggle()
                    presentatoinMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .padding(20)
//                        .background(
//                            Circle().fill(Color.white)
//                                .opacity(0.4).shadow(color: .black, radius: 10))
                })
                
                
            }
        }
    }


struct sheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        sheetBootcamp()
    }
}
