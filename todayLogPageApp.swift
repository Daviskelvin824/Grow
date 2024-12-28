//
//  todayLogPageApp.swift
//  todayLogPage
//
//  Created by Davis Kelvin on 03/04/23.
//

import SwiftUI

@main
struct todayLogPageApp: App {
    @StateObject private var dataController = DataController()
//    @FetchRequest(sortDescriptors: []) var username:
//        FetchedResults<UserName>
    var body: some Scene {
        WindowGroup {
            if let username = UserDefaults.standard.string(forKey: "USERNAME"), username != "" {
                mainView()
                    .environment(\.managedObjectContext, dataController.container.viewContext)
            }else {
                WelcomePage()
                    .environment(\.managedObjectContext, dataController.container.viewContext)
            }
        }
    }
}
