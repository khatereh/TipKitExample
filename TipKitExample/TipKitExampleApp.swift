//
//  TipKitExampleApp.swift
//  TipKitExample
//
//  Created by Khatereh Ghasemi on 2023-08-21.
//

import SwiftUI
import TipKit

@main
struct TipKitExampleApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
                .task {
                    try? await Tips.configure {
                        DisplayFrequency(.immediate)
                        DatastoreLocation(.applicationDefault, shouldReset: true)
                    }
                }
        }
    }
}
