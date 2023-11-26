//
//  GeometryReaderBootcamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 26/11/23.
//

import SwiftUI

struct GeometryReaderBootcamp: View {
    func getPercentage(geo:  GeometryProxy) -> Double {
        let maxDistance = UIScreen.main.bounds.width / 2
        let currentX = geo.frame(in: .global).midX
        return Double(1 - currentX/maxDistance)
        
    }
    
    
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
        //            Spacer()
                    VStack {
                        HStack {
            //                Spacer()
                            ForEach(0..<20) { index in
                                GeometryReader { geometry in
            //                        RoundedRectangle(cornerRadius: 20)
                                    Image("Coldplay")
                                        .shadow(radius: 30, x: 0, y: 0)
                                        .rotation3DEffect(Angle(degrees: getPercentage(geo: geometry) * 40), axis: (x: 0.0, y: 1.0, z: 0.0))
                                 
                                }
                                .frame(width: 300, height: 350)
                                .padding()
                                
                                
                            }
                        }
                        
                    }
                    
                    
                }
                
                //MARK: Start Fresh
        //        GeometryReader { geometry in
        //            HStack (spacing: 0){
        //                Rectangle()
        //                    .fill(Color.cyan)
        //                    .frame(width: geometry.size .width * 0.70)
        //                Rectangle().fill(Color.red)
        //            }
        //
        //        }
               
                .ignoresSafeArea()
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(height: 8)
                        .foregroundColor(.gray.opacity(0.8))
                    .padding(.horizontal)
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 230, height: 8)
                        .foregroundColor(.black)
                        .padding(.horizontal)
                }
                .padding()
                HStack (spacing: 23){
                    Image(systemName: "gobackward.5")
                    Image(systemName: "backward.fill")
                    Image(systemName: "pause.fill")
                    Image(systemName: "forward.fill")
                    Image(systemName: "goforward.5")
                }
                .font(.largeTitle)
            }
        }
       
    }
}

struct GeometryReaderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderBootcamp()
    }
}
