//
//  MenuBar.swift
//  PD Rebalance
//
//  Created by George Breen on 4/8/21.
//

import SwiftUI

struct MenuBar: View {
    @EnvironmentObject private var work:WorkItems
    var body: some View {
        PriorityList()
        TeamList()
    }
}

struct MenuBar_Previews: PreviewProvider {
    static var previews: some View {
        MenuBar()
            .environmentObject(WorkItems())
    }
}
