//
//  SnakeGame_SwiftUIApp.swift
//  SnakeGame_SwiftUI
//
//  Created by Khawaja Abdul Haleem on 31/05/2023.
//

import SwiftUI

@main
struct SnakeGame_SwiftUIApp: App {
    
    @StateObject var appState = AppState.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView().id(appState.gameID)
        }
    }
}

// create a global appState
class AppState: ObservableObject {
    static let shared = AppState()
    
    @Published var gameID = UUID()
}
