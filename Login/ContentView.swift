//
//  ContentView.swift
//  Login
//
//  Created by Stepan Ilmukov on 12.07.2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        WelcomeScreenView()
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            
        }
    }
}

struct PrimaryButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color("ColorLogin"))
            .cornerRadius(50)
    }
}






