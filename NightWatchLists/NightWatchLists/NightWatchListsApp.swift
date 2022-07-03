//
//  NightWatchListsApp.swift
//  NightWatchLists
//
//  Created by Camilla Cidral on 15/06/22.
//

import SwiftUI

@main
struct NightWatchListsApp: App {
    @StateObject private var nightWatchTasks = NightWatchTasks()
    
    var body: some Scene {
        WindowGroup {
            ContentView(nightWatchTasks: nightWatchTasks)
        }
    }
}
