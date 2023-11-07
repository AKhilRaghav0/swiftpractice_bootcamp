//
//  toggleBootcamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 07/11/23.
//

import SwiftUI

struct toggleBootcamp: View {
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                HStack{
                    Text("Status:")
                        
                    Text(toggleIsOn ?  "Online":"Offline")
                    Image(systemName: toggleIsOn ? "network" : "wifi.slash")
                        
                        
                }
                .frame(width: .infinity)
                
                .foregroundColor(toggleIsOn ? .green : .red)
                .font(.headline)
                
                Toggle(isOn: $toggleIsOn, label: {
                    Text("Change Status")
                        .font(.headline)
                })
                .toggleStyle(SwitchToggleStyle(tint: toggleIsOn ? Color.green : Color.red))
                
                
                Spacer()
            }
            
            .padding(.horizontal)
        }
        .background(toggleIsOn ? Color.green.opacity(0.2) : Color.red.opacity(0.3))
//        .edgesIgnoringSafeArea(.all)
    }
}

struct toggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        toggleBootcamp()
    }
}
