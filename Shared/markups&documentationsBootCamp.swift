//
//  markups&documentationsBootCamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 08/11/23.
//

import SwiftUI

struct markups_documentationsBootCamp: View {
    
    
    @State var someTempArray: [String] = [
    
    "Appel", "bamnana", "not much just fine"
    ]
    
    @State var showAlert: Bool = false
    var body: some View {
        NavigationView{
            ScrollView{
                Text("Test run foo Bar")
                ForEach(someTempArray, id: \.self) { name in
                    Text(name)
                        .font(.headline)
                    
                }
                
            }
            .navigationTitle("Markup")
            .navigationBarItems(leading:
                                    Button(action: {
                showAlert.toggle()
                //                Alert(title: Text("Simple Alert"))
            }, label: {
                Text("RAW")
            })
                                
            )
            .alert(isPresented: $showAlert, content:  {
                getAlert(text: "this is the alert")
            })
        }
        
    }
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

struct markups_documentationsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        markups_documentationsBootCamp()
    }
}
