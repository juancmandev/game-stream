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
            Spacer()
            
            Color(red: 19/255, green: 30/255, blue: 53/255, opacity: 1.0).ignoresSafeArea()
            
            VStack {
                Image("AppLogo").resizable().aspectRatio(contentMode: .fit).frame(width: 250).padding(.bottom, 42)
                
                StartView()
            }
        }
    }
}

struct StartView: View {
    @State var loginType = true
    
    var body: some View {
        VStack {
            HStack {
                Button("LOGIN") {
                    loginType = true
                }.foregroundColor(loginType ? .white : .gray)
                
                Spacer()
                
                Button("SIGN IN") {
                    loginType = false
                }.foregroundColor(loginType ? .gray : .white)
            }.padding(.horizontal, 32)
            
            Spacer(minLength: 42)
            
            if loginType {
                LoginView()
            } else {
                SignInView()
            }
        }
    }
}

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Email").foregroundColor(Color("DarkCian"))
                
                ZStack(alignment: .leading) {
                    if email.isEmpty {
                        Text(verbatim: "example@gmai.com").font(.caption).foregroundColor(.gray)
                    }
                    
                    TextField("", text: $email).foregroundColor(.white).autocapitalization(.none)
                }
                
                Divider().frame(height: 1).background(Color("DarkCian"))
            }.padding(.horizontal, 32)
            
            Divider().frame(height: 28)
            
            VStack(alignment: .leading) {
                Text("Password").foregroundColor(Color("DarkCian"))
                
                ZStack(alignment: .leading) {
                    if password.isEmpty {
                        Text(verbatim: "Type your password").font(.caption).foregroundColor(.gray)
                    }
                    
                    SecureField("", text: $password).foregroundColor(.white)
                }
                
                Divider().frame(height: 1).background(Color("DarkCian"))
                
                Divider().frame(height: 8)
                
                Text("Forget password?").foregroundColor(Color("DarkCian")).font(.footnote).frame(width: 300, alignment: .trailing)
                
                Divider().frame(height: 20)
                
                Button(action: logIn, label: { Text("LOG IN").fontWeight(.bold).foregroundColor(.white).frame(maxWidth: .infinity, alignment: .center).padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16)).overlay(RoundedRectangle(cornerRadius: 8).stroke(Color("DarkCian"), lineWidth: 2).shadow(color: .white, radius: 8)) })
                
                Text("Log in with Social Media").foregroundColor(.white)
            }.padding(.horizontal, 32)
        }
    }
}

func logIn() {
    print("Log in")
}

struct SignInView: View {
    var body: some View {
        Text("Sign in View").foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
