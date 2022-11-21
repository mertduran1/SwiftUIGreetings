//
//  MainView.swift
//  SwiftUIGreetings
//
//  Created by Mert Duran on 21.11.2022.
//

import SwiftUI

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    
    var body: some View {
        //Portrait modu
        
        if horizontalSizeClass == .compact && verticalSizeClass == .regular {
            WelcomeView()
        } else {
            //Landscape modu
            LandscapeWelcomeView()
        }
        
       
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
