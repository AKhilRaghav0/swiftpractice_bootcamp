//
//  backgroundThread.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 27/01/24.
//

import SwiftUI


class backgroundThreadViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    
    func fetchData() {
        
        DispatchQueue.global(qos: .background).async {
            let newData = self.downloadData()
            
            print("Check 1: \(Thread.isMainThread)")
            print("Check 2: \(Thread.current)")
            print("Check 3: \(Thread.main)")
           
            
            DispatchQueue.main.async {
                print("Check 4: \(Thread.isMainThread)")
                print("Check 5: \(Thread.current)")
                print("Check 6: \(Thread.main)")
                self.dataArray = newData
            }
        
        }
        
        /// This should
        ///
        ///be a public function which can be accessed by the View
        ///
        ///will write the same data array function inside the dispatchQueue to make it background
        //        let newData = downloadData()
        //        dataArray = newData
        
    }

    
    private func downloadData() -> [String] {  /// Making it private so it can be accessed by only this file
        var data: [String] = []

        
        for x in 1..<100 {
            data.append("\(x)")
            print(data )
        }
        return data
    }
}

struct backgroundThread: View {
    @StateObject var vm = backgroundThreadViewModel()
    var body: some View {
        
        ScrollView {
            LazyVStack (spacing: 20){
                Text("Load DATA")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .onTapGesture {
                        vm.fetchData()    /// Now on tapping it will fetch data and print it too on the Console.
                    }
                
                
                ForEach(vm.dataArray, id: \.self){ items in
                    Text(items)
                        .font(.headline)
                        .foregroundColor(.red)
                    
                }
                
            }
        }
    }
}

#Preview {
    backgroundThread()
}
