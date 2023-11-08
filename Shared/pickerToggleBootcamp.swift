//
//  pickerToggleBootcamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 07/11/23.
//

import SwiftUI

struct pickerToggleBootcamp: View {
    
    @State var selectSelection: String = "18"
    
    
    var body: some View {
        VStack  {
            HStack{
             Text("Age:")
             Text(selectSelection)
            }
            
            Picker(
                selection: $selectSelection,
                   label: Image(systemName: "sun.fill"),
                   content: {
                       
               ForEach(18..<20){ index in
                   Text("\(index)")
                       .font(.headline)
                       .bold()
                       .foregroundColor(.black)
                       .tag("\(index)")
                        
                       }
                
            })
            .font(.headline)
            .foregroundColor(.white)
            .background(Color.gray.opacity(0.3))
            
            
            .pickerStyle(.segmented)
//            .navigationTitle("Picker Bootcamp")
//            .navigationBarTitleDisplayMode(.automatic)
            
            
        }
        
    }
}

struct pickerToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        pickerToggleBootcamp()
    }
}
