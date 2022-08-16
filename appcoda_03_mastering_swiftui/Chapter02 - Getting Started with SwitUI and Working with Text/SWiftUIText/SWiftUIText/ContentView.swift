import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Stay Hungry. Stay Foolish.")
                .fontWeight(.bold) // definir o peso da fonte
    //            .font(.title) // definir o estilo da fonte
    //            .font(.system(.title, design: .rounded))
                .font(.system(size: 20, design: .rounded))
                .foregroundColor(.green) // definir cor do texto
            .padding() // definir um espaciamento interno do elemento

            Text("Your time is limited, so don't waste it living someone else's live. Don't be trapped by dogma-which is living with the results of the other people's thinking. Don't let the noise of others' opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.")
                .fontWeight(.bold)
                .font(.custom("Nunito", size: 25)) // definir cusom font
                .foregroundColor(.gray)
                .multilineTextAlignment(.center) // definir o alinhamento
//                .lineLimit(nil) // Definir limite de linhas
//                .truncationMode(.head) // definir o tipo de quebra de linha
                .lineSpacing(10) // definir o espaciamento entre linhas
                .padding()
//                .rotationEffect(.degrees(60), anchor: UnitPoint(x: 1, y: 0)) // definir rotação do texto
//                .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0)) // define letras igual star wars
                .shadow(color: .gray, radius: 2, x: 0, y: 5) // definir sombra para o texto

                Text("**This is how you bold a text**. *This is how make text italic.* You can [click this link](https://www.appcoda.com) to go to appcoda.com")
                .font(.title)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
