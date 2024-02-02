

import SwiftUI

struct maskingbootcaamp: View {
    
    @State var rating: Int = 0
    var body: some View {
        ZStack{
            StarView
                .overlay(
                    OverlayView.mask(StarView).shadow(color: rating <= 2 ? Color.red : Color.yellow, radius: 20))
        }
        
    }
    private var OverlayView: some View {
        GeometryReader { geometry in
            ZStack (alignment: .leading ){
                Rectangle()
                    .foregroundColor(rating <= 2 ? Color.red : Color.yellow)
                    .blur(radius: 2)
                    .frame(width: CGFloat(rating) / 5 * geometry.size.width)
            }
        }
        .allowsHitTesting(false)
    }
    
    private var StarView: some View {
        HStack {
            ForEach(1..<6){ index in
                Image(systemName: "star.fill")
                    .font(.largeTitle)
                    .foregroundColor( Color.gray)
                //                    .shadow(color: Color.yellow, radius: 40)
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            rating = index
                        }
                        
                    }
            }
        }
    }
}

struct maskingbootcaamp_Previews: PreviewProvider {
    static var previews: some View {
        maskingbootcaamp()
    }
}
