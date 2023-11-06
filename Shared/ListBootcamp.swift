//
//  ListBootcamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 06/11/23.
//

import SwiftUI

struct ListBootcamp: View {
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    
    var body: some View {
        List {
            
            Section(
                header: Text("Fruits")){
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: { IndexSet in
                        fruits.remove(atOffsets: IndexSet)
                    })
                }
            
            
        }
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
