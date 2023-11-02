//
//  TernaryOperators.swift
//  BootCamp
//
//  Created by Akhil on 02/11/23.
//

import SwiftUI

struct TernaryOperators: View {
    
    @State var isStartingState: Bool = false
    
    
    var body: some View {
        VStack{
            Button("Button: \(isStartingState.description)"){
                isStartingState.toggle()
                
            }
            Text(isStartingState ? "Starting State" : "Ending State")
            
            RoundedRectangle(cornerRadius: isStartingState ? 55 : 25)
//                .animation(.easeIn, value: isStartingState)
            //here i use ternary operator statement
            
                    //isStartingState==true     //if        //else
                .fill(isStartingState ? Color.red : Color.yellow)
                .frame(
                    width: isStartingState ?  200: 40,
                    height: isStartingState ? 100: 20
                )
//            //less efficent code
//            if isStartingState{
//                RoundedRectangle(cornerRadius: 25.0)
//                    .fill(Color.red)
//                    .frame(width: 200, height: 100)
//
//            }else {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .fill(Color.yellow)
//                    .frame(width: 200, height: 100)
//            }
            Spacer()
        }
    }
    
    struct TernaryOperators_Previews: PreviewProvider {
        static var previews: some View {
            TernaryOperators()
        }
    }
}
