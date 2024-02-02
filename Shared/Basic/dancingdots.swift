import SwiftUI
//#-learning-task(dancingDots)

/*#-code-walkthrough(2.dancingDots)*/
class SmallDot : Identifiable, ObservableObject {
    let id = UUID()
    
    @Published var offset : CGSize = .zero
    @Published var color : Color = .primary
}
/*#-code-walkthrough(2.dancingDots)*/

/*#-code-walkthrough(1.dancingDots)*/
class BigDot : Identifiable, ObservableObject {
    let id = UUID()
    
    @Published var offset: CGSize = .zero
    @Published var color: Color = .primary
    @Published var scale: Double = 1.0
    /*#-code-walkthrough(3.dancingDots)*/
    @Published var smallDots = [SmallDot]()
    /*#-code-walkthrough(3.dancingDots)*/
/*#-code-walkthrough(1.dancingDots)*/
    
    /*#-code-walkthrough(4.dancingDots)*/
    init() {
        for _ in 0..<5 {
            smallDots.append(SmallDot())
        }
    }
    /*#-code-walkthrough(4.dancingDots)*/
    
    /*#-code-walkthrough(6.dancingDots)*/
    func randomizePositions() {
        objectWillChange.send()
        for dot in smallDots {
            dot.offset = CGSize(width: Double.random(in: -120...120), height: Double.random(in: -120...120))
            dot.color = DotTracker.randomColor
        }
    }
    /*#-code-walkthrough(6.dancingDots)*/
 
    /*#-code-walkthrough(6a.dancingDots)*/
    func resetPositions() {
        objectWillChange.send()
        for dot in smallDots {
            dot.offset = .zero
            dot.color = .primary
        }
    }
    /*#-code-walkthrough(6a.dancingDots)*/

}

class DotTracker : ObservableObject {
    /*#-code-walkthrough(4.dancingDots)*/
    @Published var bigDots = [BigDot]()
    /*#-code-walkthrough(4.dancingDots)*/
    
    static var colors: [Color] = [.pink, .purple, .mint, .blue, .yellow, .red, .teal, .cyan]
    static var randomColor: Color {
        colors.randomElement() ?? .blue
    }
    
    /*#-code-walkthrough(5.dancingDots)*/
    init() {
        for _ in 0..<100 {
            bigDots.append(BigDot())
        }
    }
    /*#-code-walkthrough(5.dancingDots)*/
    
    /*#-code-walkthrough(6.dancingDots)*/
    func randomizePositions() {
        objectWillChange.send()
        for bigDot in bigDots {
            bigDot.offset = CGSize(width: Double.random(in: -50...50), height: Double.random(in: -50...50))
            bigDot.scale = 2.5
            bigDot.color = DotTracker.randomColor
            /*#-code-walkthrough(7.dancingDots)*/
            bigDot.randomizePositions()
            /*#-code-walkthrough(7.dancingDots)*/
        }
    }
    /*#-code-walkthrough(6.dancingDots)*/
    
    /*#-code-walkthrough(6a.dancingDots)*/
    func resetPositions() {
        objectWillChange.send()
        for bigDot in bigDots {
            bigDot.offset = .zero
            bigDot.scale = 1.0
            bigDot.color = DotTracker.randomColor
            bigDot.resetPositions()
        }
    }
    /*#-code-walkthrough(6a.dancingDots)*/

}

struct DancingDotsView: View {
    private var columns = Array(repeating: GridItem(.flexible()), count: 10)
    /*#-code-walkthrough(8.dancingDots)*/
    @StateObject var tracker = DotTracker()
    /*#-code-walkthrough(8.dancingDots)*/
    
    /*#-code-walkthrough(13.dancingDots)*/
    @State private var isAnimating = false
    /*#-code-walkthrough(13.dancingDots)*/

    var body: some View {
        VStack{
            
            Spacer()
            
            /*#-code-walkthrough(9.dancingDots)*/
            LazyVGrid(columns: columns) {
                ForEach(tracker.bigDots) { bigDot in
                    /*#-code-walkthrough(9.dancingDots)*/
                    ZStack {
                        /*#-code-walkthrough(10.dancingDots)*/
                        Circle()
                            .offset(bigDot.offset)
                            .foregroundColor(bigDot.color)
                            .scaleEffect(bigDot.scale)
                        /*#-code-walkthrough(10.dancingDots)*/
                        /*#-code-walkthrough(11.dancingDots)*/
                        ForEach(bigDot.smallDots) { smallDot in
                            Circle()
                                .offset(smallDot.offset)
                                .foregroundColor(smallDot.color)
                        }
                        /*#-code-walkthrough(11.dancingDots)*/
                    }
                    
                }
            }
            .frame(minHeight: 500)
            /*#-code-walkthrough(14.dancingDots)*/
            .drawingGroup()
            /*#-code-walkthrough(14.dancingDots)*/

            Spacer()
//
//            PlayResetButton(animating: $isAnimating) {
//                withAnimation(.spring(response: 0.6, dampingFraction: 0.5, blendDuration: 1).repeatForever()) {
//                    if isAnimating {
//                        tracker.randomizePositions()
//                    } else {
//                        tracker.resetPositions()
//                    }
//
//                }
//            }
            /*#-code-walkthrough(12.dancingDots)*/
        }
        .navigationTitle("Dancing Dots")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DancingDotsView_Previews: PreviewProvider {
    static var previews: some View {
        DancingDotsView()
    }
}
