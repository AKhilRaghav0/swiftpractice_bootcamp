//
//  ModelViewBootcamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 11/11/23.
//

import SwiftUI

struct userModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let username: String
    let followersCount: Int
    let isVerified: Bool
}

struct ModelViewBootcamp: View {
    
    @State var users: [userModel ] = [
//        "Akhil", "Subham", "Vishal", "Anu"
        userModel(displayName: "Subham", username: "subham", followersCount: 12, isVerified: true),
        userModel(displayName: "Akhil", username: "krypticbit", followersCount: 34, isVerified: false),
        userModel(displayName: "Vishal", username: "vishprj", followersCount: 212, isVerified: false),
        userModel(displayName: "Anu", username: "anuhita", followersCount: 69, isVerified: true )
        
    ]
    
    var body: some View {
        NavigationView{            List {
            ForEach(users) { user in
                HStack(spacing: 14){
                    Circle()
                        .frame(width: 36, height: 36)
                    VStack(alignment: .leading){
                        HStack {
                            Text(user.displayName)
                                .font(.headline )
                            Image(systemName:   user.isVerified ?  "checkmark.seal.fill" : "nothing")
                                .foregroundColor(.blue)
                        }
                        Text("@\(user.username)")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    Spacer()
                    VStack(alignment: .trailing){
                        Text("\(user.followersCount)" )
                        Text("Followers")
                            .foregroundColor(.gray )
                            .font(.headline)
                            
                    }
                 
                }
                .padding(.vertical,  10)
                
            }
            .navigationTitle("Users")
            
        }
        }
    }
}

struct ModelViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelViewBootcamp()
    }
}
