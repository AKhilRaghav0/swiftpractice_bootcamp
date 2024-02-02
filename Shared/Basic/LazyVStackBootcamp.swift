//
//  LazyVStackBootcamp.swift
//  BootCamp
//
//  Created by Akhil on 27/10/23.
//

import SwiftUI

struct LazyVStackBootcamp: View {
    
    let columns: [GridItem] = [
//        GridItem(.adaptive(minimum: 50, maximum: 300), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        
        
//        GridItem(.fixed(75), spacing: nil, alignment: nil),
//        GridItem(.fixed(100), spacing: nil, alignment: nil),
//        GridItem(.fixed(75), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil)
    
    ]
    
    var body: some View {
        ScrollView{
            
            LazyVGrid(
            columns: columns,
            alignment: .center,
            spacing: 6,
            pinnedViews: [.sectionHeaders],
            content: {
                Section(header: Text("Section 1")
                    .cornerRadius(20)
//                    .padding(30)
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(Color.blue)) {
                        ForEach(0..<20){ index in
                            Rectangle()
                            //                    .fill(LinearGradient(colors: [Color.orange, Color.cyan, Color.green], startPoint: .leading, endPoint: .bottomTrailing))
                            //                    .scaledToFit()
                            
                                .frame(height: 150)
                        }
                        
                        
                        Section(header: Text("Section 2")
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            .background(Color.blue)) {
                                ForEach(0..<20){ index in
                                    Rectangle()
                                        .fill(Color.green)
                                        .frame(height: 150)
                                    //                    .fill(LinearGradient(colors: [Color.orange, Color.cyan, Color.green], startPoint: .leading, endPoint: .bottomTrailing))
                                    //                    .scaledToFit()
                                    
                                        .frame(height: 150)
                                }
                                
                                //                    .ignoresSafeArea()
                                
                            }
                        
                    }
                })
//
//            Rectangle()
//                .fill(Color.orange)
//                .frame(height: 400)
//                .ignoresSafeArea()
//
//            LazyVGrid(columns: columns) {
             
            
//        }
    
//            .background(.image(Image(systemName: "sun")))
//            .frame(width: 300, height: 100)
    
            
        }
//        LazyVStack{
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            Text("yes")
//        }
      
    }
}

struct LazyVStackBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        LazyVStackBootcamp()
//            .preferredColorScheme(.dark)
    }
}
