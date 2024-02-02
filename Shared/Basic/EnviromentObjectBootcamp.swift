//
//  EnviromentObjectBootcamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 12/11/23.
//

import SwiftUI




class EnviromentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData(){
      
        self.dataArray.append(contentsOf: ["iphone", "samsung", "human"])
    }
}

struct EnviromentObjectBootcamp: View {
    @StateObject var viewModel: EnviromentViewModel = EnviromentViewModel()
    var body: some View {
        NavigationView{
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(destination:  Text("Temp Text")) {
                        Text(item)
                    }
//                    Text(item)
                }
                
            }
            .navigationTitle("Devices")
        }
    }
}

struct DetailView: View{
    let selectedItem: String
    var body: some View {
        ZStack{
            background(Color.orange).ignoresSafeArea()
            
            Text(selectedItem)
                .font(.headline)
                .foregroundColor(.orange)
                .padding()
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(30)
        }
    }
}

struct EnviromentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(selectedItem: "samsung")
//        EnviromentObjectBootcamp()
    }
}
