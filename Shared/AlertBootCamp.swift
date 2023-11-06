//
//  AlertBootCamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 06/11/23.
//

import SwiftUI

struct AlertBootCamp: View {
    
    
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = Color.yellow
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            Button("Click me"){
                showAlert.toggle()
            }

            .shadow(radius: 20)
            .accentColor(.teal)
            .buttonStyle(.borderedProminent)
            .alert(isPresented: $showAlert, content:  {
                Alert(
                    title: Text("IPhone Alert"),
                    message: Text("Your iPhone 15 Pro is about to Blast."),
                    primaryButton: .destructive(Text("Let's Die"), action: {
                        backgroundColor  = .red
                    }),
                    secondaryButton: .cancel(Text("Run for Life")
                                             , action: {
                                                 backgroundColor = .gray
                                             }))
                //            Alert(title: Text("Just an error")
                //                .foregroundColor(.red)
                //                .fontWeight(.semibold))
                
                
            })
        }
    }
}

struct AlertBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootCamp()
    }
}
