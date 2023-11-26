//
//  bindingBootcamp.swift
//  BootCamp
//
//  Created by Akhil on 31/10/23.
//

import SwiftUI

struct bindingBootcamp: View {
    @State var backgroundColor: Color = Color.green
    @State var buttonView: Color = Color.red
    @State var title: String = "Title"
    
    var body: some View {
        ZStack{
            backgroundColor
                .opacity(0.7)
                .ignoresSafeArea(.all)
            
            //Binding Colors with different subViews
            VStack {
                Text(title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    
                    
                ButtonView(backgroundColor: $backgroundColor, buttonColor: $buttonView, title: $title)
            }
        }
    }
}
//extracted subView
struct ButtonView: View {
    @Binding var backgroundColor: Color
    @Binding var buttonColor: Color
    @Binding var title: String
    
    var body: some View {
        Button(action: {
            backgroundColor = Color.orange
            buttonColor = Color.black
            title = "Title Shifted"
            
            
        }, label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(11)
                .shadow(radius: 20, x: 0, y: 5)
        })
    }
}

struct bindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        bindingBootcamp()
    }
}
