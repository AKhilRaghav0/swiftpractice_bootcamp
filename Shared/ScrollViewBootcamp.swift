//
//  ScrollViewBootcamp.swift
//  BootCamp
//
//  Created by Akhil on 27/10/23.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack(){
                
                ForEach(0..<100){ index in
                    ScrollView(.horizontal, showsIndicators: false, content:  {
                        HStack{
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10, x: 0.0, y: 0.0)
                                    .padding()
                                
                                
                            }
                            
                            
                        }
                        
                        
                    })
                    
                    
//                    RoundedRectangle(cornerRadius: 10)
//                        .fill(Color.cyan)
//                        .frame(width: 200, height: 150)
//                        .shadow(color: .black, radius: 10, x: 0.0, y: 0.0)
//                        .padding()
//
                    
//                    Rectangle()
//                        .fill(LinearGradient(colors: [Color.cyan, Color.yellow], startPoint: .leading, endPoint: .bottomTrailing))
////                        .cornerRadius(20)
//                        .frame(width: 300, height: 300)
//
//                    Rectangle()
//                        .fill(LinearGradient(colors: [Color.orange, Color.yellow], startPoint: .leading, endPoint: .bottomTrailing))
////                        .cornerRadius(20)
//                        .frame(width:300, height: 300)
//
                }
                
                
            
                    
            }
        }
       
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
