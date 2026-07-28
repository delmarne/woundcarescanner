//
//  Untitled.swift
//  StrayScanner
//
//  Created by Marianny De Leon on 7/27/26.
//  Copyright © 2026 Stray Robots. All rights reserved.
//
import SwiftUI
import UIKit

/// Bridges the UIKit WoundClassificationViewController into SwiftUI so it can be
/// presented as a .sheet() from SessionDetailView or any other SwiftUI screen.
struct WoundClassificationRepresentable: UIViewControllerRepresentable {
    var inputImage: UIImage?

    func makeUIViewController(context: Context) -> UINavigationController {
        let vc = WoundClassificationViewController()
        vc.inputImage = inputImage
        return UINavigationController(rootViewController: vc)
    }

    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {
        // No dynamic updates needed for this test entry point.
    }
}
