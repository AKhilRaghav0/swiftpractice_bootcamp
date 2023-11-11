//
//  ViewMOdel.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 11/11/23.
//

import SwiftUI
// MARK: CUSTOM MODIFIER
struct FruitModel : Identifiable {
    let id: String =   UUID().uuidString
    let name: String
    let count: Int
    
}

// MARK: CLASS
class FruitViewModel : ObservableObject {
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    func getFruits(){
        let fruit1 = FruitModel(name: "banana", count: 90)
        let fruit2 = FruitModel(name: "watermenlon", count: 69)
        let fruit3 = FruitModel(name: "Apple", count: 44)
        let fruit4 = FruitModel(name: "Japaya", count: 89)
         
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 13.0){
            
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
//        let fruit4 = FruitModel(name: "Pomegranet", count: 89)
//        let furit5 = fruitModel(name: "mango", count: 23),
//        let furit6 = fruitModel(name: "Orange", count: 90)
//
//        fruitArray.append(fruit4)
    }

    func deleteItem(index: IndexSet){
        fruitArray.remove(atOffsets: index
         )
    }
    
}


//MARK: VIEWMODEL

struct ViewMOdel: View {
     
    //    @State var fruitArray: [fruitModel] =  []
//    @ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()
    // USE this on Creation and INIT
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()  //using this if anything (View Reloads) then this stateObject will presist
    var body: some View {
        NavigationView{
            
            
            
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                        .progressViewStyle(.automatic)
                } else {
                    ForEach(fruitViewModel.fruitArray){ fruit in
                        HStack {
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                            
                            Spacer()
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                                .font(.caption)
                        }
                        
                    }
                    .onDelete(perform:  fruitViewModel.deleteItem)
                    
                }
             
                
                
                
                
            }
            .listStyle(.grouped)
            .navigationTitle("FruitList 🍎")
            
            .onAppear{
                fruitViewModel.getFruits()
            }
        }
    }
   
}


struct SecondaryScreen: View {
    var body: some View {
        ZStack {
            
            LinearGradient(colors: [Color.cyan, Color.gray], startPoint: .topLeading, endPoint: .topTrailing)
                .ignoresSafeArea(.all)
            
            Button {
                
            } label: {
                Text("Go Back")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
            .buttonStyle(.borderedProminent)

        }
    }
}

struct ViewMOdel_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ViewMOdel()
            SecondaryScreen()
        }
        
    }
}
