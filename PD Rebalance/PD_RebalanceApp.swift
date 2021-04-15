//
//  PD_RebalanceApp.swift
//  PD Rebalance
//
//  Created by George Breen on 4/4/21.
//

import SwiftUI

@main
struct PD_RebalanceApp: App {
    @StateObject private var work = WorkItems();
    
    init() {
    // App init stuff here.
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(work)
        }
    }
}
