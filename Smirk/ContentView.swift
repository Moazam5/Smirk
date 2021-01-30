//
//  ContentView.swift
//  Smirk
//
//  Created by Moazam Mir on 1/29/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(alignment : .center) {
            Spacer()

            Text("Welcome to")
                .font(.system(size: 72))
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .frame(maxWidth : .infinity)
            Text("Smirk")
                .font(.system(size: 72))
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .frame(maxWidth : .infinity)
          
            Spacer()
          
            Text("Pick a session style to get started")
                .font(.system(size : 40))
                .fontWeight(.medium)
                .foregroundColor(Color.white)

            Spacer()
            HStack{
                Button(action: {}) {
                    Text("Photobooth & Timewaster")

                }
                .frame(width: 300, height: 80, alignment: .center)
                .background(Color.white)
                .cornerRadius(12)
                .shadow(color: .init(.sRGB, white: 0, opacity: 0.20), radius: 4, x: 0, y: 4)
                .padding()

                Button(action: {}) {
                    Text("Photobooth Only")
                }
                .frame(width: 300, height: 80, alignment: .center)
                .background(Color.white)
                .cornerRadius(12)
                .shadow(color: .init(.sRGB, white: 0, opacity: 0.20), radius: 4, x: 0, y: 4)

            }
            .foregroundColor(.gray)
            .font(.system(size: 24))

            Spacer()

        }
        .background(LinearGradient(gradient: Gradient(colors: [.white, .blue]), startPoint: .top, endPoint: .bottom))
        .ignoresSafeArea()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

