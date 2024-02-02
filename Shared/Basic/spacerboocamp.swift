//
//  spacerboocamp.swift
//  BootCamp
//
//  Created by Akhil on 26/10/23.
//

import SwiftUI

struct spacerboocamp: View {
    var body: some View {
        VStack {
            HStack(spacing: 0){
                
                Image(systemName: "gear")
    //                .font(.system(size: 60))
                
                Spacer()
                    .frame(height: 10)
                
                Image(systemName: "xmark")
    //                .font(.system(size: 40))
                
                
                
    //
    //            Spacer()
    //                .frame(height: 10)
    //                .background(Color.orange)
    //
    //            Rectangle()
    //                .frame(width: 50, height: 50 )
    //
    //            Spacer()
    //                .frame(height: 10)
    //                .background(Color.orange)
    //
    //            Rectangle()
    //                .fill(Color.green)
    //                .frame(width: 50, height: 50)
    //
    //            Spacer()
    //                .frame(height: 10)
    //                .background(Color.orange)
    //
    //            Rectangle()
    //                .fill(Color.cyan)
    //                .frame(width: 50, height: 50)
    //
    //            Spacer()
    //                .frame(height: 10)
    //                .background(Color.orange)
    //
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    //        .ignoresSafeArea()
            .font(.system(size: 40))
            .padding(.horizontal, 30)
        .background(Color.gray)
            Spacer()
                .frame(width: 10)
                .background(Color.orange)
        }
        .background(Color.orange)
        
    }
}

struct spacerboocamp_Previews: PreviewProvider {
    static var previews: some View {
        spacerboocamp()
    }
}
