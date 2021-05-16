//
//  SwiftUiListApp.swift
//  SwiftUiList
//
//  Created by Arif Rahman Sidik on 16/05/21.
//

import SwiftUI

@main
struct SwiftUiListApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
