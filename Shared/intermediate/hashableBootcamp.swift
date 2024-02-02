//
//  hashableBootcamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 15/12/23.
//

import SwiftUI
// FOR ID
//struct MyCustomModel: Identifiable {
//    let id = UUID().uuidString
//    let title: String
//}
//MARK: FOR HASHABLE
struct MyCustomModel: Hashable {
    
    let title: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(title)
    }
}


struct hashableBootcamp: View {
    
    let data: [MyCustomModel] = [
        MyCustomModel(title: "ONE"),
        MyCustomModel(title: "TWO"),
        MyCustomModel(title: "THREE"),
        MyCustomModel(title: "FOUR"),
        MyCustomModel(title: "FIVE"),
        MyCustomModel(title: "SIX"),
        
    ]
    var body: some View {
        ScrollView {
            VStack(spacing: 40) {
                
//                ForEach(data){ item in
//                    Text(item.id)
//                        .font(.headline)
//                    
//                    
//                }
                                ForEach(data, id: \.self) { item in
                                    Text(item.title)
                                        .font(.headline)
                                }
            }
        }
        
    }
}

#Preview {
    hashableBootcamp()
}
