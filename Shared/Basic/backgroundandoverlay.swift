import SwiftUI

struct backgroundandoverlay: View {
    var body: some View {
        Image(systemName: "heart.fill")
//            .renderingMode(.original)
            .font(.system(size: 40))
            .foregroundColor(.white)
            
            .frame(maxWidth: 100, maxHeight: 100)
            .background(
            Circle()
                .fill(
                    LinearGradient(
                        colors: [Color.red, Color.cyan],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)
                        
                
                )
               
                .shadow(radius: 10)
                .overlay(
                    Circle()
                        .fill(Color.red)
                        .frame(width: 35, height: 35)
                        .overlay(
                        
                        Text("6")
                            .font(.headline)
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 10, y: -10)
                        )
                    ,alignment: .bottomTrailing
                        
                        
                
                )
            )
        
        
//For Overlay
//         Circle()
//            .fill(Color.primary)
//            .frame(width: 100, height: 100, alignment: .center)
//            .overlay(
//                Circle().fill(Color.brown)
//                    .frame(width: 120, height: 130)
//            ).opacity(0.7 )
//            .overlay(
//                Text("1").font(.largeTitle).foregroundColor(.white)
//                    .fontWeight(.semibold)
//  )
//
//
//            .background(
//
//                Rectangle()
//                    .frame(width: 150, height: 150)
//                    .foregroundColor(.accentColor)
//                    .opacity(0.6)
//                    alignment: .topLeading
                    
            
            

        
        
// For Background
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .fontWeight(.heavy)
//            .foregroundColor(.white)
//            .frame(maxWidth: 200, maxHeight: 300)
//            .background(
//                Circle().opacity(0.6)
//            )
//            .frame(maxWidth: 250, maxHeight: 350)
//            .background(
//                Circle().fill(Color.accentColor)
//            )
    }
}

struct backgroundandoverlay_Previews: PreviewProvider {
    static var previews: some View {
        backgroundandoverlay()
    }
}

