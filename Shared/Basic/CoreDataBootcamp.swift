////
////  CoreDataBootcamp.swift
////  BootCamp (iOS)
////
////  Created by Akhil on 04/01/24.
////
//
//import SwiftUI
//import CoreData
//
//
//class CoreDataViewModel: ObservableObject {
//    let container: NSPersistentContainer
//    @Published var savedEntities: [FruitEntity] = []
//    
//    init(){
//        container = NSPersistentContainer(name: "FruitsContainer")
//        container.loadPersistentStores { (description, error) in
//            if let  error = error {
//                print("Error Loading CoreData. \(error)")
//            } else {
//                print("Succusfully loaded CoreData!!")
//            }
//        }
//        fetchFruit()
//    }
//
//    func fetchFruit() {
//        let request = NSFetchRequest<FruitEntity>(entityName: "FruitEntity")
//        do {
//            savedEntities = try container.viewContext.fetch(request)
//        } catch let error {
//            print("Error Fetching \(error)")
//        }
//        
//    }
//    func addFruit(text: String             ) {
//        
//    }
//    
//}
//
//struct CoreDataBootcamp: View {
//    @StateObject var vm = CoreDataViewModel()
//    var body: some View {
//        VStack{
//            Image(systemName: "pencil.and.outline")
//                .font(.system(size: 78))
//                .foregroundColor(.red)
//        }
//    }
//}
//
//#Preview {
//    CoreDataBootcamp()
//}
