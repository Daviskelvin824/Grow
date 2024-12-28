//
//  DataController.swift
//  GrowApp
//
//  Created by Davis Kelvin on 10/04/23.
//

import CoreData
import Foundation

class DataController: ObservableObject{
    let container = NSPersistentContainer(name: "Database")
    
    init(){
        container.loadPersistentStores{description, error in
            if let error = error{
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
