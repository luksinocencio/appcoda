import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Delete", role: .destructive) {
                print("Delete")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)

            Button("Delete", role: .destructive) {
                print("Delete")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)


            Button("Cancel", role: .cancel) {
                print("Cancel")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)

            Button("Cancel", role: .cancel) {
                print("Cancel")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/// Button - simples
//Text("Hello World")
//    .padding() // 1. Add the paddings with the primary color (i.e.white)
//    .background(Color.purple) // 2. Change the background color to purple
//    .foregroundColor(.white) // 3. Set the foreground/font color to white
//    .font(.title) // 4. Change the font type
//    .cornerRadius(10)

/// Button - estilizado
//Text("Hello World")
//    .foregroundColor(.purple)
//    .font(.title)
//    .padding()
//    .border(Color.purple, width: 5)

/// Button com bordas, background e cornerRadius
//Button {
//    print("Hello World tapped!")
//} label: {
//    Text("Hello World")
//        .fontWeight(.bold)
//        .font(.title)
//        .padding()
//        .background(Color.purple)
//        .cornerRadius(40)
//        .foregroundColor(.white)
//        .font(.title)
//        .padding(10)
//        .overlay(
//            RoundedRectangle(cornerRadius: 40)
//                .stroke(Color.purple, lineWidth: 5)
//        )
//}


/// Button with Icon
//Button {
//    print("Delete button tapped!")
//} label: {
//    Image(systemName: "trash")
//        .padding()
//        .background(Color.red)
//        .clipShape(Circle())
//        .font(.largeTitle)
//        .foregroundColor(.white)
//}

/// Button with Icon and Label
//Button {
//    print("Delete button tapped!")
//} label: {
//    HStack {
//        Image(systemName: "trash")
//            .font(.title)
//        Text("Delete")
//            .fontWeight(.semibold)
//            .font(.title)
//    }
//    .padding()
//    .foregroundColor(.white)
//    .background(Color.red)
//    .cornerRadius(40)
//}

/// Button with Icon and Label
//Button(action: {
//    print("Delete tapped!")
//}) {
//    Label(
//        title: {
//            Text("Delete")
//                .fontWeight(.semibold)
//                .font(.title)
//        },
//        icon: {
//            Image(systemName: "trash")
//                .font(.title)
//        }
//    )
//    .padding()
//    .foregroundColor(.white)
//    .background(Color.red)
//    .cornerRadius(40)
//}

// Button with icon, label, gradient and label
//Button(action: {
//    print("Delete tapped!")
//}) {
//    Label(
//        title: {
//            Text("Delete")
//                .fontWeight(.semibold)
//                .font(.title)
//        },
//        icon: {
//            Image(systemName: "trash")
//                .font(.title)
//        }
//    )
//    .padding()
//    .foregroundColor(.white)
//    .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]), startPoint: .leading, endPoint: .trailing))
//    .cornerRadius(40)
//    .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
//}

/// Buttons with same style
//Button {
//    print("Share tapped!")
//} label: {
//    HStack {
//        Image(systemName: "square.and.arrow.up")
//            .font(.title)
//        Text("Share")
//            .fontWeight(.semibold)
//            .font(.title)
//    }
//}.buttonStyle(GradientBackgroundStyle())
//
//Button {
//    print("Edit tapped!")
//} label: {
//    HStack {
//        Image(systemName: "square.and.pencil")
//            .font(.title)
//        Text("Edit")
//            .fontWeight(.semibold)
//            .font(.title)
//    }
//}.buttonStyle(GradientBackgroundStyle())
//
//Button {
//    print("Delete tapped!")
//} label: {
//    HStack {
//        Image(systemName: "trash")
//            .font(.title)
//        Text("Delete")
//            .fontWeight(.semibold)
//            .font(.title)
//    }
//}.buttonStyle(GradientBackgroundStyle())

//Button(action: {}) {
//    Text("Buy me a coffee")
//        .tint(.purple) // define color of the button
//        .buttonStyle(.bordered) // define border spape oh the button
//        .buttonBorderShape(.capsule) // define round the button corners
//        .controlSize(.large) // define the size of button
//
//}

/// button with default style
//var body: some View {
//    VStack {
//        Button(action: {}) {
//            Text("Add to Cart")
//                .font(.headline)
//        }
//
//        Button(action: {}) {
//            Text("Discover")
//                .font(.headline)
//                .frame(maxWidth: 300)
//        }
//
//        Button(action: {}) {
//            Text("Checko out")
//                .font(.headline)
//        }
//    }
//    .tint(.purple)
//    .buttonStyle(.bordered)
//    .controlSize(.large)
//}
