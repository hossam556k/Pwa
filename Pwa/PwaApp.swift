//
//  PwaApp.swift
//  Pwa
//
//  Created by MacBook Pro on 08/10/2026.
//

import SwiftUI
import SwiftData
@main
struct PwaApp: App {
   

    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Pet.self)
        }
    }
}
