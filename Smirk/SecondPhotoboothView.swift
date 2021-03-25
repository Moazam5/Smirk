//
//  SecondPhotoboothView.swift
//  Smirk
//
//  Created by Moazam Mir on 3/17/21.
//

import SwiftUI

struct SecondPhotoboothView: View {
    var body: some View {
        
        VStack
        {
            Spacer()
            VStack
            {
                Button("Select Printer")
                {
                 print("Select Printer Pressed")
                }
                .frame(width: 100, height: 60, alignment: .leading)
                .background(Color.white)
                .cornerRadius(12)
                .shadow(color: .init(.sRGB, white: 0, opacity: 0.20), radius: 4, x: 0, y: 4)
                
                
                Spacer()
                Button("Free Photo") {
                    print("Take photo button pressed")
                }
                .frame(width: 600, height: 120)
                .background(Color.white)
                
                .cornerRadius(12)
                .shadow(color: .init(.sRGB, white: 0, opacity: 0.20), radius: 4, x: 0, y: 4)
                
               
                Spacer()
                
                Button("Reset Settings")
                {
                 print("Reset Settings Pressed")
                }

                .background(Color.white)
                .cornerRadius(12)
                .shadow(color: .init(.sRGB, white: 0, opacity: 0.20), radius: 4, x: 0, y: 4)
                .frame(width: 100, height: 30, alignment: .trailing)
                .font(.system(size: 12))
                .padding()


                
                
                
            }
          
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(LinearGradient(gradient: Gradient(colors: [.white, .blue]),
            startPoint: .top, endPoint: .bottom))
        .ignoresSafeArea()
        
    }
}

struct Preview : PreviewProvider
{
    static var previews: some View
    {
        SecondPhotoboothView()
    }
}
