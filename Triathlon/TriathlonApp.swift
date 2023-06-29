//
//  TriathlonApp.swift
//  Triathlon
//
//  Created by Duff Neubauer on 6/29/23.
//

import SwiftUI
import TriathlonKit
import WorldTriathlon

@main
struct TriathlonApp: App {
    
    @StateObject var store = Store(service: WorldTriathlonAPI())
    
    var body: some Scene {
        WindowGroup {
            RankingsView()
                .environmentObject(store)
        }
    }
}
