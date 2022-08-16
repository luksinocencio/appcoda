# Image

Nesse capitulo aprendi a manipular Image

--- 

## Exemplo 1

Manipulado icone do SFSymbols.

```Swift
Image(systemName: "cloud.heavyrain")
    .font(.system(size: 100))
    .foregroundColor(.blue)
    .shadow(color: .gray, radius: 10, x: 0, y: 10)
```

--- 

## Exemplo 2

Manipulação de imagem com overlay.

```Swift
Image("paris")
    .resizable()
    .aspectRatio(contentMode: .fit)
    .overlay(
        Text("If you are lucky enough to have lived in Paris as a young man, then wherever you go for the rest of your live it stays with you, for Paris is a moveable feast. \n\n- Ernest Hemingway")
            .fontWeight(.heavy)
            .font(.system(.headline, design: .rounded))
            .foregroundColor(.white)
            .padding()
            .background(Color.black)
            .cornerRadius(10)
            .opacity(0.8)
            .padding(),
        alignment: .top
    )
```

---

## Exemplo 3 

Manipulação de image com overlays e customização.

```Swift
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
```

---

## Exemplo 2

Manipulação de icones e colocando cor customizada.

```Swift
Image(systemName: "cloud.sun.rain")
    .font(.system(size: 100))
    .symbolRenderingMode(.palette)
    .foregroundStyle(.yellow, .blue, .tertiary)
```