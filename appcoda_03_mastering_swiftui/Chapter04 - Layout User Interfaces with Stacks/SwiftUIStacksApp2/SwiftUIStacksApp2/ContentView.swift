import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {

            PricingView(icon: "burst.fill", title: "Basic", price: "$9", textColor: .white, bgColor: .purple)
                .padding()
                .offset(x: 0, y: 180)

            PricingView(icon: "dial", title: "Pro", price: "$19", textColor: .white, bgColor: Color(red: 255/255, green: 183/255, blue: 37/255))
                .padding()
                .scaleEffect(0.95)

            PricingView(icon: "wand.and.rays", title: "Team", price: "$299", textColor: .white, bgColor: Color(red: 62/255, green: 63/255, blue: 70/255))
                .padding()
                .scaleEffect(0.9)
                .offset(x: 0, y: -180)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PricingView: View {

    var icon: String?
    var title: String
    var price: String
    var textColor: Color
    var bgColor:  Color

    var body: some View {
        VStack {
            icon.map { icon in
                Image(systemName: icon)
                    .font(.largeTitle)
                    .foregroundColor(textColor)
            }

            Text(title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(textColor)

            Text(price)
                .font(.system(size: 40, weight: .heavy, design: .rounded))
                .foregroundColor(textColor)

            Text("per month")
                .font(.headline)
                .foregroundColor(textColor)

        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
        .padding(40)
        .background(bgColor)
        .cornerRadius(10)
    }
}
