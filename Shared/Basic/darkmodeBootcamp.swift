//
//  darkmodeBootcamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 08/11/23.
//

import SwiftUI

struct darkmodeBootcamp: View {
    
    @Environment (\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Text("Some Text inside with primary color")
                        .foregroundColor(.primary)
                    Text("Some More text but with Secondary Color")
                        .foregroundColor(.secondary)
                    Text("this is Global Text")
                        .foregroundColor(Color("customColor"))
                        .navigationTitle(Text("Dark Mode Test"))
                    
                    Text("This is local testing variable")
                        .foregroundColor(colorScheme == .light ? .gray:.yellow)
                }
            }
        }
    }
    
    struct darkmodeBootcamp_Previews: PreviewProvider {
        static var previews: some View {
            Group{
                darkmodeBootcamp()
                    .preferredColorScheme(.dark)
                darkmodeBootcamp()
                    .preferredColorScheme(.light )
            }
            
        }
    }
}
