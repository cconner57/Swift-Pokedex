//
//  PokedexApp.swift
//  Pokedex
//
//  Created by Chris Conner on 5/21/21.
//

import SwiftUI

@main
struct PokedexApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
