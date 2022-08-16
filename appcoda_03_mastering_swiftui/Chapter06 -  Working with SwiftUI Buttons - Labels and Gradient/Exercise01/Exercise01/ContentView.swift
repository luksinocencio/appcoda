import SwiftUI

struct ContentView: View {

    @State var clicked = false

    var body: some View {
        VStack {
            Button {
                clicked.toggle()
            } label: {
                Image(systemName: "plus")
                    .padding()
                    .background(Color.purple)
                    .clipShape(Circle())
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .rotationEffect(.degrees(clicked ? -45 : -90))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
