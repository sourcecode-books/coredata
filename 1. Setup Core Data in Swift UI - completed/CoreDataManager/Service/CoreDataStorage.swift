//
//  CoreDataStorage.swift
//  CoreDataManager
//
//  Created by Jeroen de Vrind on 16/05/2021.
//

import CoreData

final class CoreDataStorage {

	// MARK: - Properties
	static let shared = CoreDataStorage()

	let container: NSPersistentContainer

	// MARK: - Initializer
	private init() {
		container = NSPersistentContainer(name: "CoreDataModel")
		container.loadPersistentStores { storeDescription, error in
			if let nsError = error as NSError? {
				assertionFailure("Core Data store failed to load with error: \(nsError), \(nsError.userInfo)")
			}
		}
	}
}
