import SwiftUI

struct ContentView: View {
    @State private var show = false
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 300, height: 300)
                .foregroundColor(.green)
                .overlay(
                    Text("Show details")
                        .font(.system(.largeTitle, design: .rounded))
                        .bold()
                        .foregroundColor(.white)
                )
            if show {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 300, height: 300)
                    .foregroundColor(.purple)
                    .overlay(
                        Text("Well, here is the details")
                            .font(.system(.largeTitle, design: .rounded))
                            .bold()
                            .foregroundColor(.white)
                    )
                    .transition(.scaleAndOffeset)
            }
        }
        .onTapGesture {
            withAnimation(Animation.spring()) {
                self.show.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension AnyTransition {
    static var offsetScaleOpacity: AnyTransition {
        AnyTransition
            .offset(x: -600, y: 0)
            .combined(with: .scale)
            .combined(with: .opacity)
    }
    
    static var scaleAndOffeset: AnyTransition {
        AnyTransition
            .asymmetric(
                insertion: .scale(scale: 0, anchor: .bottom),
                removal: .offset(x: -600, y: 00)
            )
    }
}


/// Create animation
//struct ContentView: View {
//
//    @State private var circleColorChanged = false
//    @State private var heartColorChanged = false
//    @State private var heartSizeChanged = false
//
//    var body: some View {
//        ZStack {
//            Circle()
//                .frame(width: 200, height: 200)
//                .foregroundColor(circleColorChanged ? Color(.systemGray5) : .red)
//                .animation(.spring(response: 0.3, dampingFraction: 0.3, blendDuration: 0.3), value: circleColorChanged)
////                .animation(.default, value: circleColorChanged)
//
//            Image(systemName: "heart.fill")
//                .foregroundColor(heartColorChanged ? .red : .white)
//                .font(.system(size: 100))
//                .scaleEffect(heartSizeChanged ? 1.0 : 0.5)
//                .animation(.spring(response: 0.3, dampingFraction: 0.3, blendDuration: 0.3), value: heartSizeChanged)
//
////                .animation(.default, value: heartSizeChanged)
//        }
////        .animation(.spring(response: 0.3, dampingFraction: 0.3, blendDuration: 0.3), value: circleColorChanged)
//        .onTapGesture {
//            self.circleColorChanged.toggle()
//            self.heartColorChanged.toggle()
//            self.heartSizeChanged.toggle()
//        }
//    }
//}


/// circle with border loading
//ZStack {
//    Circle()
//        .stroke(Color(.systemGray5), lineWidth: 14)
//        .frame(width: 100, height: 100)
//
//    Circle()
//        .trim(from: 0, to: 0.2)
//        .stroke(Color.green, lineWidth: 7)
//        .frame(width: 100, height: 100)
//        .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
//        .animation(.linear(duration: 1).repeatForever(autoreverses: false), value: isLoading)
//
//        // similar ao viewDidAppear
//        .onAppear() {
//            self.isLoading = true
//        }
//}

/// loading bar
//struct ContentView: View {
//    @State private var isLoading = false
//
//    var body: some View {
//        ZStack {
//            Text("Loading...")
//                .font(.system(.body, design: .rounded))
//                .bold()
//                .offset(x: 0, y: -25)
//
//            RoundedRectangle(cornerRadius: 3)
//                .stroke(Color(.systemGray5), lineWidth: 3)
//                .frame(width: 250, height: 3)
//
//            RoundedRectangle(cornerRadius: 3)
//                .stroke(Color.green, lineWidth: 3)
//                .frame(width: 30, height: 3)
//                .offset(x: isLoading ? 110 : -110, y: 0)
//                .animation(.linear(duration: 1).repeatForever(autoreverses: false), value: isLoading)
//
//        }
//        .onAppear() {
//            self.isLoading = true
//        }
//    }
//}


/// Loading Indicator
//@State private var isLoading = false
//
//var body: some View {
//    ZStack {
//        Text("Loading...")
//            .font(.system(.body, design: .rounded))
//            .bold()
//            .offset(x: 0, y: -25)
//
//        RoundedRectangle(cornerRadius: 3)
//            .stroke(Color(.systemGray5), lineWidth: 3)
//            .frame(width: 250, height: 3)
//
//        RoundedRectangle(cornerRadius: 3)
//            .stroke(Color.green, lineWidth: 3)
//            .frame(width: 30, height: 3)
//            .offset(x: isLoading ? 110 : -110, y: 0)
//            .animation(.linear(duration: 1).repeatForever(autoreverses: false), value: isLoading)
//
//    }
//    .onAppear() {
//        self.isLoading = true
//    }
//}

/// ProgressView Circle
//@State private var progress: CGFloat = 0.0
//
//var body: some View {
//    ZStack {
//        Text("\(Int(progress * 100))%")
//            .font(.system(.title, design: .rounded))
//            .bold()
//
//        Circle()
//            .stroke(Color(.systemGray5), lineWidth: 10)
//            .frame(width: 150, height: 150)
//
//        Circle()
//            .trim(from: 0, to: progress)
//            .stroke(Color.green, lineWidth: 10)
//            .frame(width: 150, height: 150)
//            .rotationEffect(Angle(degrees: -90))
//    }
//    .onAppear() {
//        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { timer in
//            self.progress += 0.05
//            print(self.progress)
//            if self.progress >= 1.0 {
//                timer.invalidate()
//            }
//        }
//    }
//}


/// Loading with mini circle
// @State private var progress: CGFloat = 0.0
//var body: some View {
//    ZStack {
//        Text("\(Int(progress * 100))%")
//            .font(.system(.title, design: .rounded))
//            .bold()
//
//        Circle()
//            .stroke(Color(.systemGray5), lineWidth: 10)
//            .frame(width: 150, height: 150)
//
//        Circle()
//            .trim(from: 0, to: progress)
//            .stroke(Color.green, lineWidth: 10)
//            .frame(width: 150, height: 150)
//            .rotationEffect(Angle(degrees: -90))
//    }
//    .onAppear() {
//        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { timer in
//            self.progress += 0.05
//            print(self.progress)
//            if self.progress >= 1.0 {
//                timer.invalidate()
//            }
//        }
//    }
//}

// Custom button
//ZStack {
//    RoundedRectangle(cornerRadius: recordBegin ? 30 : 5)
//        .frame(width: recordBegin ? 60 : 250, height: 60)
//        .foregroundColor(recordBegin ? .red : .green)
//        .overlay {
//            Image(systemName: "mic.fill")
//                .font(.system(.title))
//                .foregroundColor(.white)
//                .scaleEffect(recording ? 0.7 : 1)
//        }
//
//    RoundedRectangle(cornerRadius: recordBegin ? 35 : 10)
//        .trim(from: 0, to: recordBegin ? 0.0001 : 1)
//        .stroke(lineWidth: 5)
//        .frame(width: recordBegin ? 70 : 260, height: 70)
//        .foregroundColor(.green)
//}
//.onTapGesture {
//    withAnimation(Animation.spring()) {
//        self.recordBegin.toggle()
//    }
//
//    withAnimation(Animation.spring().repeatForever().delay(0.5)) {
//        self.recording.toggle()
//    }
//}
