//
//  SwiftUIView.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 20/12/23.
//

import SwiftUI
import AVFoundation

struct SpeechSynth: View {
    let synthesizer = AVSpeechSynthesizer()
    var body: some View {
        VStack{
           Button(action: {
               let utterance = AVSpeechUtterance(string: "Lets speak this out")
               utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
               synthesizer.speak(utterance)
               
           }, label: {
               Text("Press  this Button")
                   .fontWeight(.bold)
                   .font(.system(size: 30, design: .rounded))
           })
        }
       
    }
}

#Preview {
    SpeechSynth()
}
