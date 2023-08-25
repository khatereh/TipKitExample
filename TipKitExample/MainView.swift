//
//  ContentView.swift
//  TipKitExample
//
//  Created by Khatereh Ghasemi on 2023-08-21.
//

import SwiftUI
import TipKit

struct MainView: View {
    
    var body: some View {
        VStack(spacing: 30) {
            
            Text("TipKit Example app")
            
            Text("Display the tip here")
                .popoverTip(MainTip(), arrowEdge: .top, action: { action in
                    if action.id == "learn-more" {
                        if let url = URL(string: "https://developer.apple.com") {
                            UIApplication.shared.open(url)
                        }
                    }
                })
            
        }
        .onAppear {
            MainTip.isLoggedIn = true
        }
    }
    
}

#Preview {
    MainView()
}
