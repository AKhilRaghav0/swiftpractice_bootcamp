//
//  TextFieldBootCamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 06/11/23.
//

import SwiftUI

struct TextFieldBootCamp: View {
    
    
    @State var textfieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView{
//            LinearGradient(colors: [Color.gray, Color.cyan], startPoint: .leading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
            
            VStack {
                TextField("Write Something inside", text: $textfieldText)
    //                .textFieldStyle(.roundedBorder)
                    .padding()
                    .background(Color.gray.opacity(0.4).cornerRadius(10))
                    .foregroundColor(.black)
                .font(.headline)
//                .padding(.horizontal)
                
//                Spacer()
                Button(action: {
                    
                }, label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue.cornerRadius(10))
                        .foregroundColor(.white)
                        .font(.headline)
                    
                    
                })
                    ForEach(dataArray, id: \.self)
                    { data in
                        Text(data)
                    }
//                .padding()
                Spacer()
//                .buttonStyle(.bordered)
//                .accentColor(.teal)
//                .shadow(color: .blue, radius: 10, x: 0.0, y: 4.0)
            }
            .padding()
            .navigationTitle("TextFiled BootCamp")
        }
        
    }
    func saveText(){
        dataArray.append(textfieldText)
    }
}

struct TextFieldBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootCamp()
    }
}
