//
//  FuncViewExtraction.swift
//  BootCamp
//
//  Created by Akhil on 28/10/23.
//

import SwiftUI

struct FuncViewExtraction: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.red.opacity(0.5), Color.gray], startPoint: .leading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

struct FuncViewExtraction_Previews: PreviewProvider {
    static var previews: some View {
        FuncViewExtraction()
    }
}
