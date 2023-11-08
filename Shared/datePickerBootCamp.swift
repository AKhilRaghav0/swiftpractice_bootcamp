//
//  datePickerBootCamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 08/11/23.
//

import SwiftUI

struct datePickerBootCamp: View {
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Calendar.current.date(from: DateComponents(year: 2019)) ?? Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
//        formatter.dateStyle = .short
        formatter.dateStyle = .medium
        return formatter
    }
    
    @State var selectedDate: Date = Date()
    
    var body: some View {
        ZStack{
            
            
            LinearGradient(colors: [Color.gray, Color.black], startPoint: .bottomTrailing, endPoint: .top)
                .ignoresSafeArea(.all)
            
            VStack {
                
                Text("Selected Date is: ")
                    .font(.headline)
                    .foregroundColor(.white)
                Text(dateFormatter.string(from: selectedDate))
                    .font(.headline)
                    .foregroundColor(.white)
                DatePicker(selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date], label: {
                    Text("Select date")
                })
    //            DatePicker("Select a date: ", selection: $selectedDate, displayedComponents: [.date ])
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
}

struct datePickerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        datePickerBootCamp()
    }
}
