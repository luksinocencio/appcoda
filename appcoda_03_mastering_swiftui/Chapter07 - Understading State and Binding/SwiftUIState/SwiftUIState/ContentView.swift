import SwiftUI

struct ContentView: View {
    @State private var counterBlue = 0
    @State private var counterGreen = 0
    @State private var counterRed = 0

    var body: some View {
        VStack {
            Text("\(counterBlue + counterGreen + counterRed)")
                .font(.system(size: 220, weight: .bold, design: .rounded))
            HStack {
                CounterButton(counter: $counterBlue, color: .blue)
                CounterButton(counter: $counterGreen, color: .green)
                CounterButton(counter: $counterRed, color: .red)
            }
        }
    }
}

struct CounterButton: View {

    @Binding var counter: Int

    var color: Color

    var body: some View {
        Button(action: {
            self.counter += 1
        }) {
            Circle()
                .frame(width: 120, height: 120)
                .foregroundColor(color)
                .overlay {
                    Text("\(counter)")
                        .font(.system(size: 70, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// @State private var isPlaying = false
//VStack {
//    Button(action: {
//        // Switch between play and stop button
//        self.isPlaying.toggle()
//    }) {
//        Image(systemName: isPlaying ? "stop.circle.fill" : "play.circle.fill")
//            .font(.system(size: 150))
//            .foregroundColor(isPlaying ? .red : .green)
//    }
//}
