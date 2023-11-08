//
//  datePickerBootCamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 08/11/23.
//

import SwiftUI

struct datePickerBootCamp: View {
    
    @State var selectedDate: Date = Date()
    
    var body: some View {
        ZStack{
            
            
            LinearGradient(colors: [Color.gray, Color.black], startPoint: .bottomTrailing, endPoint: .top)
                .ignoresSafeArea(.all)
            
            
            DatePicker("Select a date: ", selection: $selectedDate, displayedComponents: [.date ])
//            DatePicker(selection: $selectedDate,
//                       label: {
//                Text("Select a Date :")
//
//
//                    .padding(.all)
//
//            })
//            .datePickerStyle(.automatic)
            .accentColor(.teal)
            .foregroundColor(.black)
            
            .font(.headline)
            .background(Color.white)
            .shadow(radius: 10)
            
        }
    }
}

struct datePickerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        datePickerBootCamp()
    }
}
