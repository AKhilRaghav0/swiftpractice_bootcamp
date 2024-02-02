import SwiftUI

enum Sender {
    case user
    case gemini
}

struct ChatMessage: Identifiable {
    let id = UUID()
    let sender: Sender
    let content: String
    let timestamp: Date
}

extension ChatMessage {
    init(geminiResponse: GeminiResponse) {
        // Here you can customize how you want to convert GeminiResponse to ChatMessage
        // For simplicity, let's just take the first content part
        let geminiContent = geminiResponse.candidates[0].content
        let text = geminiContent.parts.first?.text ?? "No content"

        self.init(sender: .gemini, content: text, timestamp: Date())
    }
}

struct GeminiResponse: Decodable {
    let candidates: [GeminiCandidate]
    let promptFeedback: PromptFeedback
}

struct GeminiCandidate: Decodable {
    let content: GeminiContent
    let finishReason: String
    let index: Int
    let safetyRatings: [SafetyRating]
}

struct GeminiContent: Decodable {
    let parts: [GeminiPart]
    let role: String
}

struct GeminiPart: Decodable {
    let text: String
}

struct SafetyRating: Decodable {
    let category: String
    let probability: String
}

struct PromptFeedback: Decodable {
    let safetyRatings: [SafetyRating]
}

struct MessageBubbleView: View {
    let message: ChatMessage

    var body: some View {
        VStack(alignment: .leading) {
            Text(message.content)
                .padding()
                .background(message.sender == .user ? Color.blue : Color.gray)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding(message.sender == .user ? .leading : .trailing)
            Text(message.timestamp.formatted(date: .numeric, time: .omitted))
                .font(.caption)
                .foregroundColor(.gray)
                .padding(.bottom, 5)
        }
    }
}

struct ChatScreen: View {
    @State private var messages: [ChatMessage] = []
    @State private var newMessage: String = ""

    var body: some View {
        VStack {
            List {
                ForEach(messages) { message in
                    MessageBubbleView(message: message)
                }
            }
            .background(Color(.systemGray6))

            HStack {
                TextField("Type your message here...", text: $newMessage)
                    .frame(height: 50)
                    .padding()
                    .background(Color(.white))
                    .cornerRadius(10)
                Button(action: sendMessage) {
                    Image(systemName: "paperplane.fill")
                        .foregroundColor(.blue)
                        .padding()
                }
            }
            .padding()
        }
    }

    private func sendMessage() {
        let userMessage = ChatMessage(sender: .user, content: newMessage, timestamp: Date())
        messages.append(userMessage)
        newMessage = ""

        // Build API request based on user query
        let query = userMessage.content
        let url = URL(string: "https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent?key=AIzaSyCunrKWJS6fUefWoBLLB2y1d7vHgLePhwI")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        let json: [String: Any] = ["prompt": query]
        let jsonData = try? JSONSerialization.data(withJSONObject: json)
        request.httpBody = jsonData

        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data, let response = response as? HTTPURLResponse, response.statusCode == 200 {
                do {
                    // Parse JSON response
                    let decoder = JSONDecoder()
                    let geminiResponse = try decoder.decode(GeminiResponse.self, from: data)
                    DispatchQueue.main.async {
                        let geminiMessage = ChatMessage(geminiResponse: geminiResponse)
                        messages.append(geminiMessage)
                    }
                } catch {
                    print(error) // Handle error
                }
            } else {
                print("Error:", error ?? "Unknown error") // Handle error
            }
        }.resume()
    }
}

struct ChatScreen_Previews: PreviewProvider {
    static var previews: some View {
        ChatScreen()
    }
}
