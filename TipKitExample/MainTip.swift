//
//  MainTip.swift
//  TipKitExample
//
//  Created by Khatereh Ghasemi on 2023-08-21.
//

import TipKit

struct MainTip: Tip {
    
    @Parameter
    static var isLoggedIn: Bool = false
    
    var title: Text {
        Text("Main Tip Title")
    }
    
    var message: Text? {
        Text("Main Tip Message")
    }
    
    var asset: Image? {
        Image(systemName: "highlighter")
    }
    
    var actions: [Action] {
        [
            Tip.Action(
                id: "learn-more",
                title: "Learn more")
        ]
    }
    
    var rules: [Rule] {
        #Rule(Self.$isLoggedIn) {
            $0 == true
        }
    }
    
}
