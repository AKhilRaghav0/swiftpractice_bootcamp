//
//  TapGestureBootCamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 09/11/23.
//

import SwiftUI

struct TapGestureBootCamp: View {
    
    
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 40){
            RoundedRectangle(cornerRadius: 24)
                .frame(height: 200)
                .padding()
                .foregroundColor(isSelected ? Color.gray : Color.blue)
            
            Button {
                isSelected.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
                    
            }
            Text("TAP Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25)
                .onTapGesture {
                    isSelected.toggle()
                }
            
            Spacer()

        }
        .padding(40)
    }
}

struct TapGestureBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureBootCamp()
    }
}
