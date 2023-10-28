import SwiftUI

struct init_enums_Bootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    // Initialization
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }

    // Enums
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        HStack {
            Image(systemName: "apple.logo")
                .font(.system(size: 60))
                .foregroundColor(.white)
            
            VStack {
                Text("\(count)")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .underline()
                
                Text(title)
                    .font(.headline)
                    .foregroundColor(.white)
            }
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct init_enums_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            //        VStack {
            //            init_enums_Bootcamp(
            //                count: 1124,
            //                fruit: .orange
            //                )
            //            init_enums_Bootcamp(
            //                count: 1124,
            //                fruit: .orange
            //            )
            //
            HStack {
                init_enums_Bootcamp(
                    count: 200,
                    fruit: .apple)
                
                init_enums_Bootcamp(
                    count: 1124,
                    fruit: .orange
                )
                
            }
            HStack {
                init_enums_Bootcamp(
                    count: 200,
                    fruit: .apple)
                
                init_enums_Bootcamp(
                    count: 1124,
                    fruit: .orange
                )
            }
            
            HStack {
                init_enums_Bootcamp(
                    count: 200,
                    fruit: .apple)
                
                init_enums_Bootcamp(
                    count: 1124,
                    fruit: .orange
                )
            }
            HStack {
                init_enums_Bootcamp(
                    count: 200,
                    fruit: .apple)
                
                init_enums_Bootcamp(
                    count: 1124,
                    fruit: .orange
                )
            }
            
            
        }
    }
}
