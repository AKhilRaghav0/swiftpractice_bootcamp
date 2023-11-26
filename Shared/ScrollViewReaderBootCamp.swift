//
//  ScrollViewReaderBootCamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 25/11/23.
//

import SwiftUI

struct ScrollViewReaderBootCamp: View {
    @State var scrollToInt: Int = 0
    @State var textFieldText: String = ""
    var body: some View {
        VStack {
            TextField("Enter your number here..", text: $textFieldText)
                .padding(.horizontal)
                .background(
                    RoundedRectangle(cornerRadius: 14)
                        .stroke(Color.gray, lineWidth: 3.0)
                        .frame(height: 55)
                )
                .padding()
                .keyboardType(.numberPad)
            
            Button(action: {
                withAnimation(.spring() ) {
                    if  let index = Int(textFieldText) {
                        scrollToInt = index
                    }
                    
//                    proxy.scrollTo(29, anchor: .top)
                }
            }, label: {
                Text("Scroll Now ")
                    .accentColor(.red)
                    .padding()
                    .background(
                        Capsule()
                            .stroke(Color.red, lineWidth: 4)
                    )
                    
                    .padding(.horizontal)
            })
             
            ScrollView {
                ScrollViewReader { proxy in
                    
                   
                    ForEach(0..<50) { index in
                        Text("This is item #\(index)")
                            .font(.headline)
                            .frame(height: 200)
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                            .padding(10)
                            .id(index)
                    }
                    .onChange(of: scrollToInt, perform: { value in
                        withAnimation(.spring()) {
                            proxy.scrollTo(value, anchor: .top)
                        }
                        
                        
                    })
                }
                
                
            }
        }
    }
}

struct ScrollViewReaderBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewReaderBootCamp()
    }
}
