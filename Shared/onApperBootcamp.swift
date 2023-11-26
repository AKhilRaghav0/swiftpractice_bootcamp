//
//  onApperBootcamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 09/11/23.
//

import SwiftUI

struct onApperBootcamp: View {
    
    @State var myText: String = "My Text"
    @State var backgroundColor: Color = Color.cyan
    @State var onCount: Int = 0
    
    var body: some View {
        
        ZStack {
            
            
            NavigationView {
                ScrollView{
                    Button(action: {
                        onCount = 0
                    }, label: {
                        Text("Reset button")
                            .font(.headline)
//                            .foregroundColor(.red)
                    })
                    .accentColor(backgroundColor)
                    .buttonStyle(.borderedProminent)
                    LazyVStack{
                        ForEach(0..<50){ _ in
                            Image("landscape")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(Rectangle())
                                .cornerRadius(25)
                                .frame(maxWidth: 530, maxHeight: 430)
                                
                                .overlay(
                                    RoundedRectangle(cornerRadius: 24)
                                        .stroke(Color.white, lineWidth: 2) // Add a white stroke around the image
                                )
                            
                                .padding()
                                .cornerRadius(20)
                            
                            
                                .onAppear{
                                    onCount += 1
                                }
                            
                            
                            
                        }
                    }
                }
                .onAppear(perform: {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 5){
                        myText = "This is the new Text"
                        backgroundColor = .red
                    }
                    
                })
                .background(backgroundColor)
                .navigationBarTitle("ON Appear, \(onCount)")
            }
            
        }
        //        .background(Color.black )
    }
}

struct onApperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        onApperBootcamp()
    }
}
