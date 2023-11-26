//
//  ScrollViewReaderBootCamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 25/11/23.
//

import SwiftUI

struct ScrollViewReaderBootCamp: View {
    var body: some View {
        ScrollView {
            Button(action: {
                
            }, label: {
                Text("Click here to goto animation #49")
            })
            
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
