import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//            Image(systemName: "cloud.heavyrain")
//                .font(.system(size: 100))
//                .foregroundColor(.blue)
//                .shadow(color: .gray, radius: 10, x: 0, y: 10)

//            Image("paris")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .overlay(
//                    Text("If you are lucky enough to have lived in Paris as a young man, then wherever you go for the rest of your live it stays with you, for Paris is a moveable feast. \n\n- Ernest Hemingway")
//                        .fontWeight(.heavy)
//                        .font(.system(.headline, design: .rounded))
//                        .foregroundColor(.white)
//                        .padding()
//                        .background(Color.black)
//                        .cornerRadius(10)
//                        .opacity(0.8)
//                        .padding(),
//                    alignment: .top
//                )
            Image("paris")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay(
                    Color.black
                        .opacity(0.4)
                        .overlay(
                            Text("Paris")
                                .font(.system(.largeTitle, design: .rounded))
                                .fontWeight(.black)
                                .foregroundColor(.white)
                                .frame(width: 200)
                        )
                )
            Image(systemName: "cloud.sun.rain")
                .font(.system(size: 100))
                .symbolRenderingMode(.palette)
                .foregroundStyle(.yellow, .blue, .tertiary)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
