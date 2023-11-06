//
//  actionsheetBootcamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 06/11/23.
//

import SwiftUI

struct actionsheetBootcamp: View {
    
    @State private var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
        
    }
    
    
    var body: some View {
        VStack {
            HStack{
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button(action: {
                    actionSheetOption = .isMyPost
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .accentColor(.primary)
                
            }
            .padding(.horizontal)
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
            
        
    }
    func getActionSheet() -> ActionSheet {
        
        let shareButton: ActionSheet.Button = .default(Text("Share")){
            //add code to share post
        }
        
        
        let reportButton: ActionSheet.Button = .destructive(Text("Report")){
            
            //report this post
        }
        
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")){
            //add to delete this post
        }
        
        let cancelButton: ActionSheet.Button = .cancel()
        let title = Text("What would you like to do?")
        
        switch actionSheetOption{
        case .isOtherPost:
            return ActionSheet (
                title: title,
                message: nil,
                buttons: [shareButton, reportButton,  cancelButton])
            
            
            
        case .isMyPost:
            return ActionSheet (
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, deleteButton,  cancelButton])
            
        
            
            
            
        }
        
        
        
        
        
//        return ActionSheet(title: Text("yes"))
//
//
//        let button1: ActionSheet.Button = .default(Text("Default"))
//        let button2: ActionSheet.Button = .destructive(Text("Destructive"))
//        let button3: ActionSheet.Button = .cancel()
//        return ActionSheet(
//            title: Text("This is the titile"),
//            message: Text("This is the message"),
//            buttons: [button1, button1, button1, button1, button1, button1, button2, button3]
//        )
    }
    
}

struct actionsheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        actionsheetBootcamp()
    }
}
