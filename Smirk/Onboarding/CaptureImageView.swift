//
//  CaptureImageView.swift
//  Smirk
//
//  Created by Moazam Mir on 1/30/21.
//

import UIKit
import AVFoundation
import SwiftUI

struct CaptureImageView {
    
    /// MARK: - Properties
        @Binding var isShown: Bool
        @Binding var image: Image?
        
        func makeCoordinator() -> Coordinator {
          return Coordinator(isShown: $isShown, image: $image)
        }
}
extension CaptureImageView: UIViewControllerRepresentable {
    func makeUIViewController(context: UIViewControllerRepresentableContext<CaptureImageView>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        //change this to camera for future use
        picker.sourceType = .camera
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController,
                                context: UIViewControllerRepresentableContext<CaptureImageView>) {
        
    }
}
