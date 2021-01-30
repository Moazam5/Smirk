//
//  ContentView.swift
//  Smirk
//
//  Created by Moazam Mir on 1/29/21.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    @State var cameraClicked: Bool = false

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

                Button(action: {
                    
                    let cameraMediaType = AVMediaType.video
                    let cameraAuthorizationStatus = AVCaptureDevice.authorizationStatus(for: cameraMediaType)

                    switch cameraAuthorizationStatus {
                    case .denied:
                        return
                    case .authorized:
                        self.cameraClicked.toggle()
                    case .restricted:
                        return //(Need to send users to settings page of app)

                    case .notDetermined:
                        // Prompting user for the permission to use the camera.
                        AVCaptureDevice.requestAccess(for: cameraMediaType) { granted in
                            if granted {
                                print("Granted access to \(cameraMediaType)")
                            } else {
                                print("Denied access to \(cameraMediaType)")
                            }
                        }
                    @unknown default:
                        NSLog("unkown camera authorization state error")
                        return
                    }
                }) {
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

