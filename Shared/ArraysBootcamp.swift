//
//  ArraysBootcamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 19/12/23.
//

import SwiftUI

struct UserModel: Identifiable {
    let id =  UUID().uuidString
    let name: String
    let points: Int
    let isVerified: Bool
}

class ArrayModificationViewModel: ObservableObject  {
    
    
}


struct ArraysBootcamp: View {
    @StateObject var vm = ArrayModificationViewModel()
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ArraysBootcamp()
}
