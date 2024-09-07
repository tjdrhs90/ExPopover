//
//  ExPopoverApp.swift
//  ExPopover
//
//  Created by 심성곤 on 9/7/24.
//

import SwiftUI

@main
struct ExPopoverApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            //RepresentableView()
        }
    }
}

struct RepresentableView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        ViewController()
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
