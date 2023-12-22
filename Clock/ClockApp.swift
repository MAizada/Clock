//
//  ClockApp.swift
//  Clock
//
//  Created by Aizada on 22.12.2023.
//

import SwiftUI

@main
struct ClockApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
