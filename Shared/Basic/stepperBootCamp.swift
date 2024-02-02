//
//  stepperBootCamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 08/11/23.
//

import SwiftUI

struct stepperBootCamp: View {
    
    @State var stepperValue: Int = 10
    @State var withInc: CGFloat = 0
    @State var colorSwap: Color = .red
//    @State var withDec: Int = 0
    
    var body: some View {
        VStack{
            
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(colorSwap)
                    .frame(width: 100 + withInc , height: 100)
                    
                    
                Spacer()
                Text("\(withInc.description)")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
            //            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
            //                .padding(50)
            Stepper {
                //onIncrement
                incrementWidth(amount: 10)
            } onDecrement: {
                incrementWidth(amount: -10)
            } label: {
                Text("Stepper 2")
            }
            
        }
        .padding(40)
        .font(.headline)
    }
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut){
            withInc += amount
            if withInc >= 70 {
                colorSwap = .red
                
            }
            else {
                colorSwap = .gray
            }
        }
        
    }
}

struct stepperBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        stepperBootCamp()
    }
}
