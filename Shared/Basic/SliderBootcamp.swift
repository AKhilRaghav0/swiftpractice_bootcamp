//
//  SliderBootcamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 08/11/23.
//

import SwiftUI

struct SliderBootcamp: View {
    @State  var sliderValue: Double = 3
    
    var body: some View {
        
       
        VStack {
            Text("Ratting: ")
//            Text(

//                String(format: <#T##String#>, <#T##arguments: CVarArg...##CVarArg#>)
//                "\(sliderValue)"

//            )
            Slider(value: $sliderValue)
//            Slider(value: $sliderValue, in: 1...5)
            Slider(value: $sliderValue, in: 1...5, step: 0.5)
                .accentColor(.red)
        }
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
