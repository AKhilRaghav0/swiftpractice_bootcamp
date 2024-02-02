import SwiftUI

struct ContentView: View {
    @State private var rotationAngle: Double = 0

    var body: some View {
        ZStack {
            AngularGradient(gradient: Gradient(stops: [.init(color: .black, location: 0), .init(color: .white, location: 1)]), center: .center)
                .rotationEffect(.degrees(rotationAngle))
                .scaleEffect(5.5) // Adjust the scale factor as needed
                .onAppear {
                    withAnimation(Animation.linear(duration: 5).repeatForever(autoreverses: false)) {
                        rotationAngle = 360
                    }
                }
                .ignoresSafeArea()

            VStack {
                Text("Day")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(rotationAngle <= 180 ? .black : .white)
                
                Spacer()
                
                Text("Night")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(rotationAngle > 180 ? .black : .white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
