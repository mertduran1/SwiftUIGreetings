//
//  TextView.swift
//  SwiftUIGreetings
//
//  Created by Mert Duran on 21.11.2022.
//

import SwiftUI

struct TextView: View {
    let text: LocalizedStringKey
    @State var color: Color
    
    let colors: [Color] = [Color(red: 123/255, green: 251/255, blue: 128/255), Color(red: 188/255, green: 177/255, blue: 88/255), Color(red: 55/255, green: 113/255, blue: 55/255),Color(red: 166/255, green: 141/255, blue: 33/255),Color(red: 77/255, green: 245/255, blue: 189/255), .indigo, .gray]
    var body: some View {
        VStack(alignment: .leading) {
            Text(text)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding()
                .background(color.opacity(0.4))
                .cornerRadius(20)
                .shadow(color: color.opacity(0.7), radius: 10, x: 10, y: 10)
                .onTapGesture { //for colors to randomly change
                    let length = colors.count
                    let randomIndex = Int.random(in: 0..<length)
                    color = colors[randomIndex]
                }
        }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.blue.opacity(0.5)
                .ignoresSafeArea()
            VStack {
                TextView(text: "Hello", color: .gray)
                TextView(text: "Lets Get this", color: .yellow)
                TextView(text: "SwiftUI Preview", color: .black)
            }
        }
    }
}
