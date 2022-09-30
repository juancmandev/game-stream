//
//  ContentView.swift
//  game-stream
//
//  Created by Juan Carlos Manzanero Domínguez on 29/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 19/255, green: 30/255, blue: 53/255, opacity: 1.0).ignoresSafeArea()
            
            VStack {
                Image("AppLogo").resizable().aspectRatio(contentMode: .fit).frame(width: 250)
                
                StartAndRegisterView()
            }
        }
    }
}

struct StartAndRegisterView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Login")
                Text("Sign in")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
