import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Circle()
                .trim(from: 0, to: 0.4)
                .stroke(Color(.systemBlue), lineWidth: 80)

            Circle()
                .trim(from: 0.4, to: 0.6)
                .stroke(Color(.systemTeal), lineWidth: 80)

            Circle()
                .trim(from: 0.6, to: 0.75)
                .stroke(Color(.systemPurple), lineWidth: 80)

            Circle()
                .trim(from: 0.75, to: 1)
                .stroke(Color(.systemYellow), lineWidth: 90)
                .overlay {
                    Text("25%")
                        .font(.system(.title, design: .rounded))
                        .bold()
                        .foregroundColor(.white)
                        .offset(x: 80, y: -100)
                }
        }
        .frame(width: 250, height: 250)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/// Rectangule code fill
/**
 Path() { path in
 path.move(to: CGPoint(x: 20, y: 20))
 path.addLine(to: CGPoint(x: 300, y: 20))
 path.addLine(to: CGPoint(x: 300, y: 200))
 path.addLine(to: CGPoint(x: 20, y: 200))
 }
 .fill(Color.green)
 **/

/// Rectangule just lines
/**
 Path() { path in
 path.move(to: CGPoint(x: 20, y: 20))
 path.addLine(to: CGPoint(x: 300, y: 20))
 path.addLine(to: CGPoint(x: 300, y: 200))
 path.addLine(to: CGPoint(x: 20, y: 200))
 path.closeSubpath()
 }
 .stroke(.green, lineWidth: 10)
 **/

/// Drawing Curves
/**
 Path() { path in
 path.move(to: CGPoint(x: 20, y: 60))
 path.addLine(to: CGPoint(x: 40, y: 60))
 path.addQuadCurve(to: CGPoint(x: 210, y: 60), control: CGPoint(x: 125, y: 0))
 path.addLine(to: CGPoint(x: 230, y: 60))
 path.addLine(to: CGPoint(x: 230, y: 100))
 path.addLine(to: CGPoint(x: 20, y: 100))
 }
 .fill(Color.purple)
 **/

/// Drawing with borders
//ZStack {
//    Path() { path in
//        path.move(to: CGPoint(x: 20, y: 60))
//        path.addLine(to: CGPoint(x: 40, y: 60))
//        path.addQuadCurve(to: CGPoint(x: 210, y: 60), control: CGPoint(x: 125, y: 0))
//        path.addLine(to: CGPoint(x: 230, y: 60))
//        path.addLine(to: CGPoint(x: 230, y: 100))
//        path.addLine(to: CGPoint(x: 20, y: 100))
//    }
//    .fill(Color.purple)
//
//    Path() { path in
//        path.move(to: CGPoint(x: 20, y: 60))
//        path.addLine(to: CGPoint(x: 40, y: 60))
//        path.addQuadCurve(to: CGPoint(x: 210, y: 60), control: CGPoint(x: 125, y: 0))
//        path.addLine(to: CGPoint(x: 230, y: 60))
//        path.addLine(to: CGPoint(x: 230, y: 100))
//        path.addLine(to: CGPoint(x: 20, y: 100))
//        path.closeSubpath()
//    }
//    .stroke(Color.black, lineWidth: 5)
//}

/// Simple pizza graph without slice
//Path() { path in
//    path.move(to: CGPoint(x: 200, y: 200))
//    path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: .degrees(0), endAngle: .degrees(90), clockwise: true)
//}
//.fill(.green)

//
//var body: some View {
//    ZStack {
//        Path { path in
//            path.move(to: CGPoint(x: 187, y: 187))
//            path.addArc(center: .init(x: 187, y: 187), radius: 150, startAngle: .degrees(0), endAngle: .degrees(190), clockwise: true)
//        }
//        .fill(.yellow)
//
//        Path { path in
//            path.move(to: CGPoint(x: 187, y: 187))
//            path.addArc(center: .init(x: 187, y: 187), radius: 150, startAngle: .degrees(190), endAngle: .degrees(110), clockwise: true)
//        }
//        .fill(.teal)
//
//        Path { path in
//            path.move(to: CGPoint(x: 187, y: 187))
//            path.addArc(center: .init(x: 187, y: 187), radius: 150, startAngle: .degrees(110), endAngle: .degrees(90), clockwise: true)
//        }
//        .fill(.blue)
//
//        Path { path in
//            path.move(to: CGPoint(x: 187, y: 187))
//            path.addArc(center: .init(x: 187, y: 187), radius: 150, startAngle: .degrees(90), endAngle: .degrees(360), clockwise: true)
//        }
//        .fill(.purple)
//        .offset(x: 20, y: 20)
//
//        Path { path in
//            path.move(to: CGPoint(x: 187, y: 187))
//            path.addArc(center: .init(x: 187, y: 187), radius: 150, startAngle: .degrees(90), endAngle: .degrees(360), clockwise: true)
//            path.closeSubpath()
//        }
//        .stroke(Color(red: 52/255, green: 52/255, blue: 122/255), lineWidth: 10)
//        .offset(x: 20, y: 20)
//        .overlay {
//            Text("25%")
//                .font(.system(.largeTitle, design: .rounded))
//                .bold()
//                .foregroundColor(.white)
//                .offset(x: 80, y: -110)
//        }
//    }
//}

/// Button with custom shape
//Button {
//    print("Olá")
//} label: {
//    Text("Test")
//        .font(.system(.title, design: .rounded))
//        .bold()
//        .foregroundColor(.white)
//        .frame(width: 250, height: 50)
//        .background(Dome().fill(Color.red))
//}

/// Custom button Stop
//ZStack {
//    Circle()
//        .foregroundColor(.green)
//        .frame(width: 200, height: 200)
//        .overlay(
//            RoundedRectangle(cornerRadius: 5)
//                .frame(width: 80, height: 80)
//                .foregroundColor(.white)
//        )
//
//}

/// Custom Loading Circle
//private var purpleGradient = LinearGradient(gradient: Gradient(colors: [Color(red: 207/255, green: 150/255, blue: 207/255), Color(red: 107/255, green: 116/255, blue: 179/255)]), startPoint: .trailing, endPoint: .leading)
//
//var body: some View {
//    ZStack {
//        Circle()
//            .stroke(Color(.systemGray6), lineWidth: 20)
//            .frame(width: 300, height: 300)
//
//        Circle()
//            .trim(from: 0, to: 0.85)
//            .stroke(purpleGradient, lineWidth: 20)
//            .frame(width: 300, height: 300)
//            .overlay {
//                VStack {
//                    Text("85%")
//                        .font(.system(size: 80, weight: .bold, design: .rounded))
//                        .foregroundColor(.gray)
//                    Text("Complete")
//                        .font(.system(.body, design: .rounded))
//                        .bold()
//                        .foregroundColor(.gray)
//                }
//            }
//    }
//}
