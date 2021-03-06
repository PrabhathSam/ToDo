//
//  ToDoApp.swift
//  ToDo
//
//  Created by Prabhath Samarathunga on 2020-12-16.
//

import SwiftUI

@main
struct ToDoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
