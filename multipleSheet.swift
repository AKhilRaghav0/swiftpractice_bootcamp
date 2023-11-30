import SwiftUI

struct RandomModel: Identifiable {
    let id = UUID().uuidString
    let title: String
}

struct MultipleSheet: View {
    @State private var selectedModel: RandomModel?  = nil
    //    @State private var showSheet: Bool = false
    //    @State private var showSheet2: Bool = false
    
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.gray.opacity(0.4), Color.blue.opacity(0.7 )], startPoint: .leading, endPoint: .topLeading).edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Button("Button 1") {
                    selectedModel = RandomModel(title: "ONE")
                }
                
                
                
                Button("Button 2") {
                    selectedModel = RandomModel(title: "TWO")
                }
                
            }
            .sheet(item: $selectedModel) { model in
                NextScreen(selectedModel: model)
            }
        }
    }
}


struct NextScreen: View {
    let selectedModel: RandomModel
    
    var body: some View {
        ZStack {
            
            Color.blue.opacity(0.6).ignoresSafeArea()
            
            VStack {
                Text(selectedModel.title)
                    .font(.largeTitle)
                Image(systemName: "tornado")
                    .font(.system(size: 70, weight: .semibold, design: .rounded))
                    .foregroundColor(.white)
            }
            
            
            
        }
        
    }
}

struct MultipleSheet_Previews: PreviewProvider {
    static var previews: some View {
        MultipleSheet()
    }
}
