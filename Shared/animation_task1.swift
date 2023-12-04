//
//  animation_task1.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 04/12/23.
//

import SwiftUI

struct animation_task1: View {
    @State private var isLoading = false
    var body: some View {
        Circle()
            .trim(from: 0, to: 0.7)
            .stroke(Color.green, lineWidth: 5)
            .frame(width: 100, height: 100)
            .rotationEffect(Angle(degrees: isLoading ? 360:0))
            .animation(Animation.default.repeatForever(autoreverses: false))
            .onAppear() {
                self.isLoading = true
            }
    }
}

#Preview {
    animation_task1()
}
