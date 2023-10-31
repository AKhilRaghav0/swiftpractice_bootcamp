//
//  FuncViewExtraction.swift
//  BootCamp
//
//  Created by Akhil on 28/10/23.
//

import SwiftUI

struct FuncViewExtraction: View {
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        
       
        ZStack {
            //background
            backgroundColor
                .ignoresSafeArea(.all)
//            LinearGradient(colors: [Color.red.opacity(0.5), Color.gray], startPoint: .leading, endPoint: .bottomTrailing)
//                .ignoresSafeArea()
            //Content
            
                contentLayer
            
            
            
        }
        
       
    }
    
    var contentLayer: some View{
        VStack{
            Text("Title")
                .font(.largeTitle)
            Button(action: {
                buttonPressed()
//                    backgroundColor = .yellow
//                    backgroundColor = .cyan
                
            }, label: {
                Text("Press ME")
                    .fontWeight(.heavy)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            })
        }
    }
    
    func buttonPressed(){
        backgroundColor = .yellow
    }
}

struct FuncViewExtraction_Previews: PreviewProvider {
    static var previews: some View {
        FuncViewExtraction()
    }
}
