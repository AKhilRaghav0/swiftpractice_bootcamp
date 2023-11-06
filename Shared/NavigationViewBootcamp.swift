//
//  NavigationViewBootcamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 04/11/23.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView{
            ScrollView {
                
                
                NavigationLink("Buttons BootCamp", destination: ButtonsBootcamp())
                NavigationLink("Binding BootCamp", destination: bindingBootcamp())
                NavigationLink("Animation BootCamp", destination: animationBootcamp())
                NavigationLink("Ternary BootCamp", destination: TernaryOperators())
                NavigationLink("Sheet BootCamp", destination: sheetBootcamp())
                NavigationLink("Another Screen", destination: myAnotherScreen())
                
                
            }
            .navigationTitle("My Bootcamps")
            .navigationBarItems(
                leading: HStack {
                    Image(systemName: "person.fill")
                    Image(systemName: "flame")
                        .foregroundColor(.red)
                },
                                trailing: NavigationLink(
                                    destination: LazyVStackBootcamp(),
                                    label: {
                                        Image(systemName: "gear")
                                    }
                                ).accentColor(.black)
            )
            .navigationBarTitleDisplayMode(.automatic)
            
            
            //            .navigationBarHidden(true)
            
            
        }
        
    }
}



struct myAnotherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .bottom){
            LinearGradient(colors: [Color.cyan, Color.gray], startPoint: .leading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
                .navigationTitle("Secondary Screen")
                .navigationBarBackButtonHidden(true)
            
            VStack {
                
                Button("Back Button"){
                    presentationMode.wrappedValue.dismiss()
                    
                }
                
                
                
                NavigationLink("Click here", destination: Text("Third Screen"))
            }
            Spacer()
            //            Button(action: {
            //
            //            }, label: {
            //                Text("Press me")
            //
            
            
            //            })
                .font(.largeTitle)
                .foregroundColor(.black)
                .tint(.white)
                .buttonStyle(.bordered)
            
        }
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
        myAnotherScreen()
    }
}
