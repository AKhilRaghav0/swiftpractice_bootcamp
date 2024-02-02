//
//  EscapingBootcamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 02/02/24.
//

import SwiftUI

class EscapingViewModel: ObservableObject {
    
    
    @Published var text: String = "Foo Baar"
    
 
    
    func getData() {
        downloadData2 { returneddata in
            text = returneddata
        }
       
        
    }
    
    func downloadData() -> String{
        return "New Data"
        
    }
    func downloadData2(completionHandler: (_ data: String) -> Void) {
        completionHandler("New Data")
    }
}



struct EscapingBootcamp: View {
    @StateObject var vm = EscapingViewModel()
    var body: some View {
        Text(vm.text)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(.blue)
            .onTapGesture {
                vm.getData()
            }
    }
}

#Preview {
    EscapingBootcamp()
}
