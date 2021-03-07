//
//  CameraSelection.swift
//  Smirk
//
//  Created by Moazam Mir on 3/2/21.
//

import SwiftUI

struct CameraSelection: View {
    @State private var downloadAmount = 0.0
   // let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()

    @State var showPV = true
    
    var body: some View {
        VStack {
            ZStack{
                //ProgressView(value: 0.25)
                Divider().frame(width: 200, alignment: .center)
                    .background(Color.white)
                HStack{
                    Text("Setup Photo")
                    .padding()

                    .background(Color.white)
                    .cornerRadius(30)
                    Divider().frame(width: 300, height: 3, alignment: .center)
                        .background(Color.white)
                   // Spacer()
                    
                    Text("Setup Printer")
                        .foregroundColor(Color.white)
                        .cornerRadius(6)
                        .padding()
                        .overlay(
                               RoundedRectangle(cornerRadius: 30)
                                   .stroke(Color.white, lineWidth: 6)
                           )
                       
                }
                
                    
              

            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    
    //    .progressViewStyle(DarkBlueShadowProgressViewStyle())
        .background(LinearGradient(gradient: Gradient(colors: [.white, .blue]), startPoint: .top, endPoint: .bottom))
        .ignoresSafeArea()
        
    }
    
    }

struct DarkBlueShadowProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration)
            .shadow(color: Color(red: 0, green: 0, blue: 0.6),
                    radius: 4.0, x: 1.0, y: 2.0)
    }
}
struct CameraSelection_Previews: PreviewProvider {
    static var previews: some View {
        CameraSelection()
    }
}
