//
//  MessagesView.swift
//  SwiftUIGreetings
//
//  Created by Mert Duran on 21.11.2022.
//

import SwiftUI

struct MessagesView: View {
    let messages = [
        DataItemModel(text: LocalizedStringKey("Good Day!"), color: Color("Green")), //asset folderdaki
        DataItemModel(text: LocalizedStringKey("Welcome To SwiftUI"), color: Color("Gray")),
        DataItemModel(text: LocalizedStringKey("Lets Get Started"), color: Color("Yellow")),
        DataItemModel(text: LocalizedStringKey("Right Now!"), color: Color("Blue"))
    ]
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages, content: { dataItem in
                TextView(text: dataItem.text, color: dataItem.color)
            })
        }.padding()
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
