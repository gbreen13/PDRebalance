//
//  Team.swift
//  PD Rebalance
//
//  Created by George Breen on 4/7/21.
//

import Foundation
import SwiftUI

struct Team: Identifiable {
    var id: String
    var title: String
    var description: String
    var isVisible: Bool
    var color: Color
}

// MARK: - Smoothie List
extension Team {
    
    init?(for id: Team.ID) {
        guard let team = Team.all.first(where: { $0.id == id }) else { return nil }
        self = team
    }
    
    static var all: [Team] = [
        .aa,
        .af,
        .da,
        .ts,
        .iot,
        .systest,
        .ops,
        .cs,
        .sec,
        .other
    ]
    
    static let allIDs: [Team.ID] = all.map { $0.id }
    
    func getIndex()->Int {  // where is this Team in 'all'
        var i = 0
        for t in Team.all {
            if t.id == self.id {return i}
            i += 1
        }
        return 0
    }
    
    func getIndex(id: Team.ID)->Int {   // pass a string, get the index in 'all' for that team
        var i = 0
        for t in Team.all {
            if t.id == id {return i}
            i += 1
        }
        return 0
    }

    static let aa = Team (
        id: "aa",
        title: "Audio Analytics",
        description: "Audio",
        isVisible: true,
        color: Color.p_red
    )
    static let af = Team (
        id: "af",
        title: "Audio Fusion",
        description: "UI and such",
        isVisible: true,
        color:Color.p_redpurple
    )
    static let da = Team (
        id: "da",
        title: "Data Analytics",
        description: "Data and such",
        isVisible: true,
        color:Color.purple
    )
    static let ts = Team (
        id: "ts",
        title: "Telephony Services",
        description: "Telephony",
        isVisible: true,
        color: Color.p_bluepurple
   )
    //p_redorange, p_red,p_redpurple, p_purple, p_bluepurple, p_blue, p_bluegreen, p_green, p_yellowgreen, p_yellow, p_yelloworange, p_orange
    static let iot = Team (
        id: "iot",
        title: "Internet of Things",
        description: "Devices",
        isVisible: true,
        color: Color.p_blue
    )
    static let systest = Team (
        id: "systest",
        title: "System Testing",
        description: "End to end testng",
        isVisible: true,
        color: Color.p_bluegreen
    )
    static let ops = Team (
        id: "ops",
        title: "Operations",
        description: "Infrastructure and Dev Ops",
        isVisible: true,
        color: Color.p_green
    )
    static let cs = Team (
        id: "cs",
        title: "Customer Success",
        description: "Customer feature and issue advocates",
        isVisible: true,
        color:Color.p_yellowgreen
    )
    static let sec = Team (
        id: "sec",
        title: "Security",
        description: "Regulatory Compliance, licensing",
        isVisible: true,
        color:Color.p_yellow
    )
    static let other = Team (
        id: "other",
        title: "Other",
        description: "tbd",
        isVisible: true,
        color:Color.p_yelloworange
   )
}
