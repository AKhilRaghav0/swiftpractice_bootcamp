//
//  SoundBootCamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 30/11/23.
//

import SwiftUI
import AVKit

class SoundManager {
    
    static let instance = SoundManager()
    
    var player: AVAudioPlayer?
    func playsound() {
        guard   let url = URL(string: "") else { return }
        
        do {
            player = try      AVAudioPlayer(contentsOf: url)
        } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
        
        
    }
}

struct SoundBootCamp: View {
    var body: some View {
        VStack(spacing: 40){
            Button("Button 1") {
                
            }
            .tint(.brown)
            .buttonStyle(.borderedProminent)
            Button("Button 2") {
                
            }
            .tint(.orange)
            .buttonStyle(.borderedProminent)
        }
    }
}

struct SoundBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SoundBootCamp()
    }
}
