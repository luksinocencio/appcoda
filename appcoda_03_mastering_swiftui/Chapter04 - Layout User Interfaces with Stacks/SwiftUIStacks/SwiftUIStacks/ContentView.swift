import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
        VStack {
            HeaderView()
            HStack(spacing: 20) {
                PricingView(title: "Basic", price: "$9", textColor: .white, bgColor: Color.purple)
                ZStack {
                    PricingView(title: "Pro", price: "$19", textColor: .black, bgColor: Color(red: 240/255, green: 240/255, blue: 240/255))

                    Text("Best for designer")
                        .font(.system(.caption, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(5)
                        .background(Color(red: 255/255, green: 183/255, blue: 37/255))
                        .cornerRadius(5)
                        .offset(x: 0, y: 87)
                }
            }
        }
        .padding(.horizontal)

        ZStack {
            PricingView(icon: "wand.and.rays", title: "Team", price: "$299", textColor: .white, bgColor: Color(red: 62/255, green: 63/255, blue: 70/255))
                .padding()

            Text("Best for designer")
                .font(.system(.caption, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(5)
                .background(Color(red: 255/255, green: 183/255, blue: 37/255))
                .cornerRadius(5)
                .offset(x: 0, y: 87)
        }

        Spacer()
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2) {
                Text("Choose")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
                Text("Your Plan")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
            }
            Spacer()
        }
        .padding()
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
