//
//  AlertBootCamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 06/11/23.
//

import SwiftUI

struct AlertBootCamp: View {
    
    
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
    //    @State var alertTitle: String = ""
    //    @State var alertMessage: String =  ""
    @State var backgroundColor: Color = Color.yellow
    
    
    enum MyAlerts {
        
        case success
        case error
        
    }
    
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            HStack {
                Button("Button 1"){
                    alertType = .success
                    //                    alertTitle = "Error uploading Video."
                    //                    alertMessage = "Your video is not supported by our containers"
                    showAlert.toggle()
                }
                
                Button("Button 2"){
                    alertType = .error
                    //                    alertTitle = "Error in posting logs"
                    //                    alertMessage = "Your API is outdated"
                    showAlert.toggle()
                }
                .accentColor(.red)
                
                
                .alert(isPresented: $showAlert, content:  {
                    getAlert()
                })
            }
            .shadow(color: .teal, radius: 20)
            .accentColor(.teal)
            .buttonStyle(.borderedProminent)
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert (title: Text("There was an error"))
        case .success:
            return Alert(title: Text("This was a success!"), message: nil,
                         dismissButton: .default(Text("OK"), action: {
                backgroundColor = .green
            }))
        default:
            return Alert(title: Text("Nil, default"))
            //    func getAlert() -> Alert {
            //        return Alert(
            //            title: Text(alertTitle),
            //            message: Text(alertMessage),
            //            dismissButton: .default(Text("Okayt")))
            //        return Alert(
            //            title: Text("IPhone Alert"),
            //            message: Text("Your iPhone 15 Pro is about to Blast."),
            //            primaryButton: .destructive(Text("Let's Die"), action: {
            //                backgroundColor  = .red
            //            }),
            //            secondaryButton: .cancel(Text("Run for Life")
            //                                     , action: {
            //                                         backgroundColor = .gray
            //                                     }))
            //        //            Alert(title: Text("Just an error")
            //        //                .foregroundColor(.red)
            //        //                .fontWeight(.semibold))
            //
            
        }
    }
    
    struct AlertBootCamp_Previews: PreviewProvider {
        static var previews: some View {
            AlertBootCamp()
        }
    }
}
