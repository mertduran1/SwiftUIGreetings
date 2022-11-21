//
//  BackgroundView.swift
//  SwiftUIGreetings
//
//  Created by Mert Duran on 21.11.2022.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [Color("backgroundBlue"), Color("backgroundGray")], startPoint: .topLeading, endPoint: .bottomTrailing)
            .opacity(0.4)
            .ignoresSafeArea()
    }
}


struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
