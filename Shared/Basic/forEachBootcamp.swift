//
//  forEachBootcamp.swift
//  BootCamp
//
//  Created by Akhil on 26/10/23.
//

import SwiftUI

struct forEachBootcamp: View {
    
    
    let data: [String] = ["GHi", "hemlo", "heya everyone"]
    let myString: String = "hello"
    var body: some View {
        VStack{
            
            ForEach(0..<10) { index in
                VStack {
//                    ForEach(data.indices) {index in
//                        Text("\(data[index]): \(index)")
                        
                    }
                    
                }
                    
                
                
            }

        }
        
    }
//}

struct forEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        forEachBootcamp()
    }
}
