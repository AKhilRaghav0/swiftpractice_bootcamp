//
//  hapticsBootcamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 06/12/23.
//

import SwiftUI


class HapticManager {
    static  let instance = HapticManager() //Singleton
    
    
    func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(type)
        
        
    }
    
    func impact(style: UIImpactFeedbackGenerator.FeedbackStyle)  {
        let generator = UIImpactFeedbackGenerator(style: style)
        generator.impactOccurred()
        
    }
}




struct hapticsBootcamp: View {
    var body: some View {
        VStack (spacing: 30){
            Button("Success") {HapticManager.instance.notification(type: .success)}
            Button("Warning") {HapticManager.instance.notification(type: .warning)}
            Button("Error ") {HapticManager.instance.notification(type: .error)}
            Divider()
            Button("Heavy"){ HapticManager.instance.impact(style: .heavy)}
            Button("Light"){ HapticManager.instance.impact(style: .light)}
            Button("Soft"){ HapticManager.instance.impact(style: .soft)}
            Button("Rigid"){ HapticManager.instance.impact(style: .rigid)}
            Button("Medium"){ HapticManager.instance.impact(style: .medium)}
        }
        .font(.title)
        /*fontWeight(.semibold)*/
        .buttonStyle(.bordered)
    }
}

#Preview {
    hapticsBootcamp()
}
