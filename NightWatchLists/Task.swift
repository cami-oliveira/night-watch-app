//
//  Task.swift
//  NightWatchLists
//
//  Created by Camilla Cidral on 24/06/22.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    let name: String
    var isComplete: Bool
    let lastCompleted: Date?
}
