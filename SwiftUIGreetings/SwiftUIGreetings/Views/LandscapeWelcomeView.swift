//
//  LandscapeWelcomeView.swift
//  SwiftUIGreetings
//
//  Created by Mert Duran on 21.11.2022.
//

import SwiftUI

struct LandscapeWelcomeView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            HStack{
                
                VerticalTitleView()
                Spacer()
                MessagesView()
                
            }
        }
    }
}

struct LandscapeWelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        LandscapeWelcomeView()
    }
}
