//
//  Bookwork1.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 20/12/23.
//

import SwiftUI

struct Bookwork1: View {
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var body: some View {
        
        VStack (spacing: 20){
            VStack {
                Text("Instant Developer")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .font(.system(size:40))
                
                Text("Get the help for developers in 15min")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .font(.headline)
                
                
                
            }
            
            HStack (alignment: .bottom, spacing: 20){
                Image("user1")
                    .resizable()
                //                .scaledToFit()
                    .aspectRatio(contentMode: .fit)
                Image("user2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("user3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .padding(.horizontal, 20)
            Text("Need help with coding problems!?  Register here!")
                .foregroundColor(.white)
                .multilineTextAlignment(.leading)
            Spacer()
            
            if verticalSizeClass == .compact {
                HSignUpButtonGroup()
            } else {
                VSignUpButtonGroup()
            }
            
            
        }
        .padding(.top, 30)
        .background{
            Image("back2")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        
        }
        
        
    }
    
}

#Preview {
    Bookwork1()
}



struct HSignUpButtonGroup: View {
    var body: some View {
        HStack {
            Button(action: {
                
            }, label: {
                Text("Sign up")
                    .frame(width: 200)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.indigo)
                    .cornerRadius(10)
                
            })
            Button(action: {
                
            }, label: {
                Text("Login")
                    .frame(width: 200)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(10)
                
            })
        }
    }
}

struct VSignUpButtonGroup: View {
    var body: some View {
        VStack {
            Button(action: {
                
            }, label: {
                Text("Sign up")
                    .frame(width: 200)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.indigo)
                    .cornerRadius(10)
                
            })
            Button(action: {
                
            }, label: {
                Text("Login")
                    .frame(width: 200)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(10)
                
            })
        }
    }
}
