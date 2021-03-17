//
//  CameraSelection.swift
//  Smirk
//
//  Created by Moazam Mir on 3/2/21.
//

import SwiftUI

struct FirstPhotoboothView: View {
   
    var body: some View {
        VStack {
            Spacer()
            ZStack{
                
                HStack{
                    Text("Setup Photo")
                    .padding()

                    .background(Color.white)
                    .cornerRadius(30)
                    Divider().frame(width: 350, height: 3, alignment: .center)
                        .background(Color.white)
                   // Spacer()
                    
                    Text("Setup Printer")
                        .foregroundColor(Color.white)
                        .cornerRadius(6)
                        .padding()
                        .overlay(
                               RoundedRectangle(cornerRadius: 30)
                                   .stroke(Color.white, lineWidth: 6) )
                       
                }
                }

            Spacer()
            HStack{
                VStack{
                    Text("Choose a logo to print")
                    
                    Text("Select file below")
                        .font(.system(size: 15))
                    
                    Button("") {
                        
                    }
                    .frame(width: 300, height: 300, alignment: .leading)
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(color: .init(.sRGB, white: 0, opacity: 0.20), radius: 4, x: 0, y: 4)
                    .padding()
                    
                }
              
                Spacer()
                VStack{
                    Text("Choose an advertisement")
                    Text("Select file below")
                        .font(.system(size: 15))
                    
                    Button("") {
                        
                    }
                    .frame(width: 300, height: 300, alignment: .leading)
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(color: .init(.sRGB, white: 0, opacity: 0.20), radius: 4, x: 0, y: 4)
                    .padding()
                }
              

            }
            .font(.system(size: 20))
            .foregroundColor(Color.white)
            
            Spacer()
            
            VStack{
                HStack
                {
                    Spacer()
                    Button("Next") {
                        print("Next button pressed")
                    }
                    .frame(width: 150, height: 50, alignment: .center)
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding(.bottom,50)
                    
                }
            }
        

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(LinearGradient(gradient: Gradient(colors: [.white, .blue]),
                                   startPoint: .top, endPoint: .bottom))
        .ignoresSafeArea()
        
    }
    
    }



struct CameraSelection_Previews: PreviewProvider {
    static var previews: some View {
        FirstPhotoboothView()
    }
}
