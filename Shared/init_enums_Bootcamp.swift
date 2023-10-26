import SwiftUI

struct init_enums_Bootcamp: View {
    //here
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    
    
    var body: some View {
        VStack{
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title )
                .font(.headline)
                .foregroundColor(.white)
            
            
        }
        .frame(width: 150, height: 150)
            .background(backgroundColor)
            .cornerRadius(10)
    }
}

struct init_enums_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        init_enums_Bootcamp(
            backgroundColor: .gray,
            count: 24,
            title: "Apple"
        )
    }
}
