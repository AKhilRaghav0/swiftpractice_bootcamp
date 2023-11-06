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
        NavigationView {
            List {
                
                Section(
                    header: Text("Fruits")){
                        ForEach(fruits, id: \.self) { fruit in
                            Text(fruit.capitalized)
                        }
                        .onDelete(perform: delete)
                        .onMove(perform: move)
                    }
                
                
            }
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
            trailing:
                    Button("Add", action: add)
            
            )
        }
        
    }
    func delete(IndexSet: IndexSet) {
        fruits.remove(atOffsets: IndexSet)
    }
    func move(indices: IndexSet, newOffset: Int){
        fruits.move(fromOffsets: indices, toOffset: newOffset)

    }
    func add(){
        fruits.append("Coconut")
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
