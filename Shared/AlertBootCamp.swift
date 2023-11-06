//
//  AlertBootCamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 06/11/23.
//

import SwiftUI

struct AlertBootCamp: View {
    
    
    @State var showAlert: Bool = false
    var body: some View {
        Button("Click me"){
            showAlert.toggle()
        }
        .alert(isPresented: $showAlert, content:  {
            Alert(title: Text("Just an error")
//                .foregroundColor(.red)
                .fontWeight(.semibold))
                
            
        })
    }
}

struct AlertBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootCamp()
    }
}
