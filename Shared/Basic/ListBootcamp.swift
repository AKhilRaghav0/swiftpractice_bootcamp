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
    @State var veggies: [String] = [
    "tomato", "potato", "carrot"
    ]
    
    var body: some View {
        NavigationView {
            List {
                
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                       .font(.headline)
                       .foregroundColor(.orange)
                        
                
                ){
                        ForEach(fruits, id: \.self) { fruit in
                            Text(fruit.capitalized)
                                .font(.subheadline)
                                .foregroundColor(.white)
                                .padding(.vertical, 10)
//                                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                                .background(Color.pink)
                        }
                        .onDelete(perform: delete)
                        .onMove(perform: move)
                        .listRowBackground(Color.gray)
                    }
                Section(
                    header: Text("Vegitables")){
                        ForEach(veggies, id: \.self) { veggie in
                            Text(veggie.capitalized)
                            
                        }
                    }
                
            }
            .accentColor(.red)
//            .listStyle(.automatic)
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
                
                    
                
                
            )
        }.accentColor(.purple)
        
    }
    
    var addButton: some View{
        Button("Add", action: add)
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
