//
//  texteditorbootcamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 07/11/23.
//

import SwiftUI

struct texteditorbootcamp: View {
    @State var textEditortext: String = "Temp Text"
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                TextEditor(text: $textEditortext)
                    .frame(height: 250)
                    .cornerRadius(10)
                    .colorMultiply(.gray.opacity(0.3))
                
                Button(action: {
                    savedText = textEditortext
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .bold()
                        .foregroundColor(.white)
                        
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(
                            LinearGradient(colors: [Color.red.opacity(0.7), Color.black], startPoint: .bottom, endPoint: .top)
                        )
                        .cornerRadius(10)
                        
                        
                })
                Text(savedText)
                    .font(.subheadline)
                    .foregroundColor(.black)
                    
                Spacer()
                
            }
            .padding()
            .background(
                .white
            
            )
            .navigationTitle("TextEditor !")
        }
    }
//    func saveText(){
//        dataArray.append($textEditortext)
//        textEditortext  = ""
//    }
}

struct texteditorbootcamp_Previews: PreviewProvider {
    static var previews: some View {
        texteditorbootcamp()
    }
}
