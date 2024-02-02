//
//  tabBarViewPageViewBootcamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 08/11/23.
//

import SwiftUI

struct tabBarViewPageViewBootcamp: View {
    
    @State var selectedTab: Int = 1
    let icons: [String] = [
    "paperplane.fill", "calendar.day.timeline.leading", "person.and.background.dotted", "person.crop.square.filled.and.at.rectangle.fill"
    ]
    
    var body: some View {
        
        
        
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
//                    .resizable()
//                    .scaledToFit()
                
            }
        }
        .font(.system(size: 60))
        
        .background(
            RadialGradient(gradient: Gradient(colors: [Color.red, Color.purple]), center: .center, startRadius: 5, endRadius: 350)
        )
        .cornerRadius(30)
        .padding()
        .frame(height: 300)
        .tabViewStyle(.page)
//        TabView{
//
//            VStack {
//                ZStack {
//                    RoundedRectangle(cornerRadius: 25)
//                        .foregroundColor(.cyan)
//
////                    Color.red
//    //                    .ignoresSafeArea()
////                        .cornerRadius(30)
//                    VStack {
//                        Image(systemName: "square.and.arrow.down.fill")
//                            .foregroundColor(.white)
//                            .font(.system(size: 25))
//                        Text("Download Anything")
//                            .font(.headline)
//                            .foregroundColor(.white)
//
//
//
//                        TabView(selection: $selectedTab, content: {
//                            ExtractedView(selectedTab: $selectedTab)
//                                .tabItem({
//                                    Image(systemName: "house.fill")
//                                    Text("Home")
//
//                                }
//                                ).tag(1)
//
//                            Text("Browse")
//                                .tabItem{
//                                    Image(systemName: "network")
//                                    Text("Browse")
//                                }
//                                .tag(2)
//                            Text("Content Not Available")
//                                .tabItem{
//                                    Image(systemName: "bonjour")
//                                    Text("Recheck Devices")
//                                }
//                                .tag(3)
//                            Text("Profile")
//                                .tabItem{
//                                    Image(systemName: "person.crop.circle")
//                                    Text("Profile")
//                                }
//                                .tag(4)
//                        })
//                        .cornerRadius(20)
//                        .font(.headline)
//                        .accentColor(.black)
//
//
//                    }
//                    .padding()
//                }
//            }
//            RoundedRectangle(cornerRadius: 25)
//                .foregroundColor(.gray)
//            RoundedRectangle(cornerRadius: 25)
//                .foregroundColor(.teal)
//            Spacer()
//        }
//        .frame(maxWidth: 360, maxHeight: 710)
//        .tabViewStyle(.page)
        
        
        
             
        
        
        
        
            }
        
        
    }
    
    
    struct tabBarViewPageViewBootcamp_Previews: PreviewProvider {
        static var previews: some View {
            tabBarViewPageViewBootcamp()
        }
    }
    
//        struct ExtractedView: View {
//
//            @Binding var selectedTab: Int
//
//            var body: some View {
//                ZStack(){
//                    Color.blue.opacity(0.4).ignoresSafeArea(.all)
//                    VStack{
//
//                        Text("Home Tab")
//                        //                    .foregroundColor(.white)
//                            .font(.largeTitle)
//                        //            Spacer()
//
//                        Button(action: {
//                            selectedTab = 4
//                        }, label: {
//                            Text("Go to Profile")
//                                .font(.headline)
//                                .padding()
//                                .padding(.horizontal)
//                                .background(Color.white)
//                                .cornerRadius(10)
//                        })
//                    }
//
//                }
//
//            }
//        }
    

