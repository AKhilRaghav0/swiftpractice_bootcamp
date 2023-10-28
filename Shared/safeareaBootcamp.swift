import SwiftUI

struct safeareaBootcamp: View {
    var body: some View {
        
        ScrollView{
            
            VStack {
                Text("Title Goes here")
                    
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.top, 10)
                
                ForEach(0..<10){ index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                    
                    
                }
            }
            
        }
        .background(LinearGradient(colors: [Color.red, Color.gray], startPoint: .leading, endPoint: .bottomTrailing))
//        .ignoresSafeArea()
        
        
        
//        ZStack{
//
////            LinearGradient(colors: [Color.cyan, Color.gray], startPoint: .leading, endPoint: .bottomLeading)
//
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                    .fontWeight(.semibold)
////                    .edgesIgnoringSafeArea(.all)
//
//
//
//                Spacer()
//
//
//        //            .background(Color.green)
//
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(LinearGradient(colors: [Color.gray, Color.cyan], startPoint: .leading, endPoint: .bottomLeading))
//
//
//
//        }
        
        
        
    }
}

struct safeareaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        safeareaBootcamp()
    }
}
