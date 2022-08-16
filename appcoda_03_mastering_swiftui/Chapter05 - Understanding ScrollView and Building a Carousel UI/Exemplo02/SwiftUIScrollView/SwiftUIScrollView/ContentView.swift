import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                HStack {
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Monday, aug 20".uppercased())
                            .font(.system(size: 14, design: .rounded))
                            .foregroundColor(.secondary)
                        Text("Your Reading")
                            .font(.system(.largeTitle, design: .rounded))
                            .fontWeight(.black)
                    }
                    .padding()
                    Spacer()
                }
                HStack {
                    Group {
                        CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Written by Simon Ng")
                        CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Gabriel Theodoropoulos")
                        CardView(image: "flutter-app", category: "Flutter", heading: "Drawing a Border with Rounded Corners", author: "Lawrence Tan")
                        CardView(image: "natural-language-api", category: "iOS", heading: "Whta's New in Natural Language API", author: "Sai Kambampati")
                    }
                    .frame(width: 300)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
