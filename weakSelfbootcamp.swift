//
//  weakSelfbootcamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 31/01/24.
//

import SwiftUI

struct weakSelfbootcamp: View {
    @AppStorage("count") var count: Int?
    
    init(){
        count = 0
    }
    var body: some View {
        NavigationView{
            NavigationLink(destination: weakSelfSecondScreen(), label: {
                Image(systemName: "rectangle.portrait.and.arrow.right.fill")
                    .accentColor(.primary)
                    .font(.system(size: 40))
                    
            }
                
            
            )
            .navigationTitle("First Screen")
            
            
        }
        .overlay(
            Text("\(count ?? 0)")
                .font(.largeTitle)
                .padding()
                .background(Color.green).cornerRadius(10),
            alignment: .topTrailing
        )
        
    }
}


struct weakSelfSecondScreen: View {
    
    @StateObject var vm = weakSelfSecondScreenViewModel()
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.red.opacity(0.4), Color.gray.opacity(0.6)], startPoint: .topTrailing, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                Text("Second View")
                    .font(.largeTitle)
                    .foregroundColor(.red)
                
                if let data = vm.data {
                    Text(data)
                }
            }
        }
    }
}

class weakSelfSecondScreenViewModel: ObservableObject {
    
    
    @Published var data: String? = nil

    init(){
        print("Initialize NOW")
        let currentCount = UserDefaults.standard.value(forKey: "count") as? Int ?? 0
        UserDefaults.standard.set(currentCount + 1, forKey: "count")
        getData()
    }
    
    deinit{
        print("DeInitialize now")
        let currentCount = UserDefaults.standard.value(forKey: "count") as? Int ?? 0
        UserDefaults.standard.set(currentCount - 1, forKey: "count")

    }
    
    func getData() {
        
       
        DispatchQueue.main.asyncAfter(deadline: .now() + 20) { [ weak self ] in
            self?.data = "NE W Data!!!"
        }
        
    }
}

#Preview {
    weakSelfbootcamp()
}
