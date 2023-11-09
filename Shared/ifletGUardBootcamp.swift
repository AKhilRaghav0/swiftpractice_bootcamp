//
//  ifletGUardBootcamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 09/11/23.
//

import SwiftUI

struct ifletGUardBootcamp: View {
    // MARK: PROPERTIES
    @State var currentUserID: String? = "Test_User"
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    var body: some View {
        // MARK: NAVIGATION
        NavigationView{
            VStack{
                Text("Here we practicing safe coding!")
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                if isLoading{
                    ProgressView()
                }
                
                // MARK: KEEP NOTE
                // DO NOT FORCE FORCE UNWRAP VALUES = " ! " ( BAD CODING )
                Text(displayText!)
                    .font(.largeTitle)
                Spacer()
                
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData()
            }
        }
    }
    // MARK: LOADDATA_FUNCTION
    func loadData(){
        
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                displayText = "this is the new Data!! User id is: \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Error. There is no userID "
                
        }
        
        
        
       
        
    }
    func loadData2(){
         guard let userID = currentUserID else {
            displayText = "Error. There is no userID "
             return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            displayText = "this is the new Data!! User id is: \(userID)"
            isLoading = false
        }
    }
}

struct ifletGUardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ifletGUardBootcamp()
    }
}
