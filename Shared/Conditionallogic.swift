import SwiftUI

struct ConditionalLogic: View {
    @State var showCircle: Bool = false
    @State var backgroundColor: Color = .yellow
    @State var shapeColor: Color = .blue
    @State var shapeOffset: CGSize = .zero
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            VStack(spacing: 20) {
                Button(action: {
                    withAnimation {
                        if showCircle {
                            backgroundColor = shapeColor
                            shapeColor = getRandomColor()
                            shapeOffset = .zero
                        } else {
                            shapeColor = backgroundColor
                            backgroundColor = getRandomColor()
                            shapeOffset = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                        }
                        showCircle.toggle()
                    }
                }) {
                    Text(showCircle ? "Rectangle" : "Circle")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                }
                
                if showCircle {
                    Circle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(shapeColor)
                        .scaleEffect(showCircle ? 1.0 : 0.5)
                        .offset(shapeOffset)
                        .animation(.easeInOut(duration: 0.5))
                } else {
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(shapeColor)
                        .scaleEffect(showCircle ? 0.5 : 1.0)
                        .offset(shapeOffset)
                        .animation(.easeInOut(duration: 0.5))
                }
                
                Spacer()
            }
        }
        .onAppear {
            withAnimation {
                backgroundColor = getRandomColor()
                shapeColor = getRandomColor()
            }
        }
    }
    
    func getRandomColor() -> Color {
        let colors: [Color] = [.red, .green, .blue, .orange, .purple, .pink]
        return colors.randomElement() ?? .yellow
    }
}

struct ConditionalLogic_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalLogic()
    }
}
