//
//  CoreDataManagerApp.swift
//  CoreDataManager
//
//  Created by Jeroen de Vrind on 16/05/2021.
//

import SwiftUI

@main
struct CoreDataManagerApp: App {

	let persistentStorage = CoreDataStorage.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
				.environment(\.managedObjectContext, persistentStorage.container.viewContext)
        }
    }
}
