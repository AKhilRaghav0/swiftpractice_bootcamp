//
//  colorPickerBootcamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 08/11/23.
//

import SwiftUI

struct colorPickerBootcamp: View {
    @State var backgroundColor: Color = .green
    
    var body: some View {
        ZStack{
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            ColorPicker(selection: $backgroundColor,
                        supportsOpacity: true, label: {
                Text("Select a Color")
                
                    .font(.headline)
                    .fontWeight(.semibold)
                    .padding()
                    .foregroundColor(.white)
                    .background(.black)
                
            })
            .background(.black)
            .cornerRadius(10)
            .padding(50)
//            .background(backgroundColor)
            
            .padding()
            
        }
    }
}

struct colorPickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        colorPickerBootcamp()
    }
}
