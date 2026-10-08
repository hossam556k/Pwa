//
//  PwaApp.swift
//  Pwa
//
//  Created by MacBook Pro on 08/10/2026.
//

import SwiftUI
import CoreData

@main
struct PwaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
