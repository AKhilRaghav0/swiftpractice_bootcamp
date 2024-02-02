//
//  framesBootcamp.swift
//  BootCamp
//
//  Created by Akhil on 25/10/23.
//

import SwiftUI

struct framesBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.white)
            .frame(maxWidth: 250, maxHeight: 50, alignment: .center)
            
            .background(Color.red)
    }
}

struct framesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        framesBootcamp()
    }
}
