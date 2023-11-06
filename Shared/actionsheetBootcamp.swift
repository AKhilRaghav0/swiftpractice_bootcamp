//
//  actionsheetBootcamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 06/11/23.
//

import SwiftUI

struct actionsheetBootcamp: View {
    
    @State private var showActionSheet: Bool = false
    var body: some View {
        Button("Click me"){
            showActionSheet.toggle()
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet())
            
        
    }
    func getActionSheet(){
        return ActionSheet(title: Text("yes"))
    }
    
}

struct actionsheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        actionsheetBootcamp()
    }
}
