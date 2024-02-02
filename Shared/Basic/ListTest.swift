//
//  ListTest.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 21/12/23.
//

import SwiftUI

struct ListTest: View {
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats And Deli", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]
    var body: some View {
        List {
            
            ForEach(0...restaurantNames.count - 1, id: \.self) {index in
                
                HStack {
                    Image("Barrafina")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    Text(restaurantNames[index])
                }
                
                
            }
        }
    }
}

#Preview {
    ListTest()
}
