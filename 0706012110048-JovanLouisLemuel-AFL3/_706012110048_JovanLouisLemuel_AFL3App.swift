//
//  _706012110048_JovanLouisLemuel_AFL3App.swift
//  0706012110048-JovanLouisLemuel-AFL3
//
//  Created by MacBook Pro on 11/04/23.
//

import SwiftUI

@main
struct _706012110048_JovanLouisLemuel_AFL3App: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
        #if !os(watchOS)
        .commands {
            LandmarkCommands()
        }
        #endif
        
        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
        
        #if os(macOS)
        Settings {
            LandmarkSettings()
        }
        #endif
    }
}
