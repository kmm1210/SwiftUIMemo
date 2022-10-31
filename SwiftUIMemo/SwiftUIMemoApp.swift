//
//  SwiftUIMemoApp.swift
//  SwiftUIMemo
//
//  Created by KIMMIMI on 2022/10/31.
//

import SwiftUI

@main
struct SwiftUIMemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
