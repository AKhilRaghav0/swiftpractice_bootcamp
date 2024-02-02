import SwiftUI

struct LongPressGestureBootcamp: View {
    @Environment(\.colorScheme) var colorScheme
    
    @State var isComplete: Bool = false
    @State var isSuccess: Bool = false
    
    var body: some View {
        ZStack {
//            Color.gray.edgesIgnoringSafeArea(.all) // Background color for the entire screen
            
            VStack(alignment: .leading) {
                Rectangle()
                    .fill(isComplete ? Color.green.opacity(0.4) : Color.blue.opacity(0.4))
                    .frame(maxWidth: isComplete ? .infinity : 20)  // Adjusted maxWidth based on isComplete
                    .frame(height: 55)
                    .background(Color.gray)

                
                HStack {
                    Text("Click Here")
                        .font(.headline)
                        .foregroundColor(colorScheme == .dark  ? Color.black : Color.white)
                        .padding()
                        .background(colorScheme == .dark ? Color.white : Color.black)
                        .cornerRadius(10)
                        .onLongPressGesture(minimumDuration: 1.0, maximumDistance: 50.0) { (isPressing) in
                            if isPressing {
                                withAnimation(.easeInOut(duration: 4.0)) {
                                    isComplete.toggle()
                                }
                            } else {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1){
                                    if !isSuccess {
                                        
                                    }
                                }
                            }
                        } perform: {
                            withAnimation(.easeInOut(duration: 1.0)) {
                                isSuccess = true
                            }
                        }

//                        Rectangle()
//                            .fill(isComplete ? Color.green.opacity(0.4) : Color.blue.opacity(0.4))
//                            .frame(maxWidth: .infinity)
//                            .frame(height: 55)
//                            .background(Color.gray)

//                        .onLongPressGesture(minimumDuration: 1.0, maximumDistance: 50.0) { (isPressing) in
//                            if isPressing {
//                                withAnimation(.easeInOut(duration: 1.0)) {
//                                    isComplete.toggle()
//                                }
//                            }
//                        } perform: {
//                            withAnimation(.easeInOut) {
//                                isSuccess = true
//                            }
//                        }
                    
                    Text("Reset")
                        .font(.headline)
                        .foregroundColor(colorScheme == .dark  ? Color.white : Color.black)
                        .padding()
                        .background(colorScheme == .dark ? Color.purple : Color.red)
                        .cornerRadius(10)
                }
            }
        }
    }
}

struct LongPressGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        LongPressGestureBootcamp()
    }
}
