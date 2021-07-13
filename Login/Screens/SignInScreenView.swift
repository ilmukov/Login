//
//  SignInScreenView.swift
//  Login
//
//  Created by Stepan Ilmukov on 13.07.2021.
//

import SwiftUI

struct SignInScreenView: View {
    @State private var email: String = ""
    var body: some View {
        ZStack {
            Color("BgColor").edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                VStack {
                    Text("Sign In")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom, 30)
                    
                    SocialLoginButton(image: Image(uiImage: #imageLiteral(resourceName: "apple-2")), text: Text("Sign in with Apple"))
                    
                    SocialLoginButton(image: Image(uiImage: #imageLiteral(resourceName: "icons8-google-64")), text: Text("Sign in with Google")).foregroundColor(Color("ColorLogin"))
                    
                    Text("or get a link emailed to you")
                        .foregroundColor(Color.black.opacity(0.4))
                    
                    TextField("Work email addess", text: $email)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y:16)
                        .padding(.vertical)
                    
                    PrimaryButton(title: "Email me a signup link")
                }
                Spacer()
                Divider()
                Spacer()
                Text("You are completely")
                Text("Read our Terms & Condition")
                    .foregroundColor(Color("ColorLogin"))
                Spacer()
            }
            .padding()
        }
    }
}

struct SignInScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreenView()
    }
}

struct SocialLoginButton: View {
    var image: Image
    var text: Text
    
    var body: some View {
        HStack {
            image
                .padding(.horizontal)
            Spacer()
            text
                .font(.title2)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(50)
        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y:16)
    }
}
