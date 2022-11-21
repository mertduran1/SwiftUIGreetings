//
//  TitleView.swift
//  SwiftUIGreetings
//
//  Created by Mert Duran on 21.11.2022.
//

import SwiftUI

struct TitleView: View {
    @State var isRotated: Bool = false
    @State var captionIndex: Int = 0

    var body: some View {
        HStack {
            GreetingsTextView(captionIndex: $captionIndex)
            Spacer()
            RotatableCircleView(isRotated: $isRotated)
                
        }.padding()
    }
    
}

struct VerticalTitleView: View {
    @State var isRotated: Bool = false
    @State var captionIndex: Int = 0

    var body: some View {
        VStack(alignment: .leading) {
            GreetingsTextView(captionIndex: $captionIndex)
            RotatableCircleView(isRotated: $isRotated)
            
            Spacer()
                
        }.padding()
    }
    
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(captionIndex: 0)
//        VerticalTitleView()
    }
}
struct RotatableCircleView: View {
    @Binding var isRotated: Bool
    var body: some View {
        Circle()
            .strokeBorder(AngularGradient(gradient: Gradient(colors: [.red, .purple, .orange, .pink]), center: .center, angle: .zero), lineWidth: 15)
            .rotationEffect(isRotated ? .zero : .degrees(360))
            .frame(maxWidth: 70, maxHeight: 70)
            .onTapGesture {
                withAnimation(Animation.spring()) {
                    isRotated.toggle()
                }
            }
    }
}
struct GreetingsTextView: View {
    @Binding var captionIndex: Int
    
    let caption : [LocalizedStringKey] = [
        LocalizedStringKey("iOS With Swift"),
        LocalizedStringKey("SwiftUI is the future"),
        LocalizedStringKey("Programming is Fun"),
        LocalizedStringKey("New things everyday")
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5.0) {
            Text(LocalizedStringKey("Good Day"))
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(caption[captionIndex])
                .font(.headline)
                .fontWeight(.medium)
        }.padding()
            .onTapGesture {
                captionIndex = Int.random(in: 0..<caption.count)
            }
    }
}
