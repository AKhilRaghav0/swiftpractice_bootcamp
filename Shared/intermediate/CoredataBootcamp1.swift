//
//  CoredataBootcamp1.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 26/01/24.
//

import SwiftUI
import CoreData
/// Starting point of adding a coredata in an APP
class CoreDataViewModel: ObservableObject {
    let container: NSPersistentContainer
    @Published  var savedEntities: [FruitEntity] = []
    
    init() {
        container = NSPersistentContainer(name: "FruitsContainer")
        container.loadPersistentStores { (description, error) in
            if let error = error {
                print("Error Loading Coredata \(error)")
            }
            else {
                print("Successfully Implimented CoreData.")
            }
        }
        fetchFruits()
    }
    func fetchFruits() {
        let request = NSFetchRequest<FruitEntity>(entityName: "FruitEntity")
        
        do {
            savedEntities = try container.viewContext.fetch(request)
        } catch  let error {
            print("Error occured while fetching: \(error)")
        }
        
    }
    
    func addFruit(text: String){
        let newFruit = FruitEntity(context: container.viewContext)
        newFruit.name = text
        saveData()
    }
    
    func saveData(){
        do {
            try container.viewContext.save()
            fetchFruits()
        } catch let error {
            print("Error while saving: \(error)")
        }
        
    }
    func deleteFruit(indexSet: IndexSet) {
        guard let index = indexSet.first else {return}
        let entity = savedEntities[index]
        container.viewContext.delete(entity)
    }
    
}


/// END of Adding a coreData in an APP
struct CoredataBootcamp1: View {
    @StateObject var vm = CoreDataViewModel()
    @State var textFieldText: String = ""
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                TextField("Enter your text here... ", text: $textFieldText)
                    .font(.headline)
                    .padding(.leading)
                    .frame(height: 55)
                    .background(Color.gray.opacity(0.7))
                    .cornerRadius(10)
                    .padding(.horizontal)
                
                Button(action: {
                    guard !textFieldText.isEmpty else {return}
                    vm.addFruit(text: textFieldText)
                    textFieldText = ""
                }, label: {
                    Text("Save")
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .background(Color.pink.opacity(0.7))
                        .cornerRadius(10)
                        .padding(.horizontal)
                    
                })
                .accentColor(.gray)
//                .buttonStyle(.borderedProminent)
                
                List {
                    ForEach(vm.savedEntities) { entity in
                        Text(entity.name ?? "NO Name")
                    }
                    .onDelete(perform: vm.deleteFruit)
                    
                }
                
             
            }
            .navigationTitle("Data Feeding..")
        }
    }
}

#Preview {
    CoredataBootcamp1()
}
