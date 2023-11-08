//
//  tabBarViewPageViewBootcamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 08/11/23.
//

import SwiftUI

struct tabBarViewPageViewBootcamp: View {
    
    @State var selectedTab: Int = 1
    
    
    var body: some View {
        
        
        
        
        
        TabView(selection: $selectedTab, content: {
            ExtractedView(selectedTab: $selectedTab)
                .tabItem({
                    Image(systemName: "house.fill")
                    Text("Home")
                    
                }
                ).tag(1)
            
            Text("Browse")
                .tabItem{
                    Image(systemName: "network")
                    Text("Browse")
                }
                .tag(2)
            Text("Content Not Available")
                .tabItem{
                    Image(systemName: "bonjour")
                    Text("Recheck Devices")
                }
                .tag(3)
            Text("Profile")
                .tabItem{
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
                .tag(4)
        })
        .font(.headline)
        .accentColor(.black)
        
        
        
        
    }
    //
    //
}


struct tabBarViewPageViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        tabBarViewPageViewBootcamp()
    }
}

struct ExtractedView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack(){
            Color.blue.opacity(0.4).ignoresSafeArea(.all)
            VStack{
                
                Text("Home Tab")
                //                    .foregroundColor(.white)
                    .font(.largeTitle)
                //            Spacer()
                
                Button(action: {
                    selectedTab = 4
                }, label: {
                    Text("Go to Profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                })
            }
            
        }
        
    }
}
