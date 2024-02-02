//
//  markups&documentationsBootCamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 08/11/23.
//

import SwiftUI

struct markups_documentationsBootCamp: View {
    
    // MARK: PROPERTIES
    @State var someTempArray: [String] = [
        
        "Appel", "bamnana", "not much just fine"
    ]
    
    @State var showAlert: Bool = false
    // MARK: BODY
    
    /* Working copy- things to do:
     1) Fix title
     2( Fix alert
     */
    var body: some View {
        NavigationView{ // START: NAV
            ZStack {
                VStack{ //START: BACKGROUND TOP BLUR
                    Divider()
                        .background(
                            LinearGradient(colors: [.green, .blue], startPoint: .leading, endPoint: .trailing)
                                .opacity(0.5),
                            
                            ignoresSafeAreaEdges: .top)
                    Spacer()
                    
                }// END: BACKGROUND TOP BLUR
                // background
                Color.yellow.opacity(0.3).edgesIgnoringSafeArea(.bottom)
                //foreground
                ScrollView{ // START: SCROLLVIEW
                    Text("Test run foo Bar")
                    ForEach(someTempArray, id: \.self) { name in
                        Text(name)
                            .font(.headline)
                        
                    }
                    
                } // END: SCROLLVIEW
                .cornerRadius(10)
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
        }.accentColor(.red) // END: NAV
        
    }
    //MARK: FUNCTION
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}
  //MARK: PREVIEW
struct markups_documentationsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        markups_documentationsBootCamp()
    }
}
