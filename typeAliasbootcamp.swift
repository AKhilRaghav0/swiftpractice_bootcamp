//
//  typeAliasbootcamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 31/01/24.
//

import SwiftUI



struct TabsView: View {
    enum Tab {
        case home
    }
    
    @State private var selectedTab: Tab = .home
    
    var body: some View {
        TabView(selection: $selectedTab) {
            NavigationView {
                ScrollView {
                    Text("Home Screen")
                        
                        .navigationTitle("Home")
                        .navigationBarTitleDisplayMode(.inline)
                        .toolbar(.visible, for: .navigationBar)
                        .toolbarBackground(.visible, for: .navigationBar)
                }
            }
            .tabItem {
                Image(systemName: "square")
            }
            .tag(Tab.home)
        }
        .tabViewStyle(.page)
    }
}


#Preview {
    TabsView()
}
