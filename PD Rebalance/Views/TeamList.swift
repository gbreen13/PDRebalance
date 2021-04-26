//
//  TeamList.swift
//  PD Rebalance
//
//  Created by George Breen on 4/8/21.
//

import SwiftUI

struct TeamList: View {
    @EnvironmentObject private var work:WorkItems
    var body: some View {
        List {
            Text("Team List")
            ForEach(work.team) { team in
                // step is NSObject type, so you'll need it cast to your model
                Button(action: {
                    let i = team.getIndex()
                    work.team[i].isVisible = !work.team[i].isVisible
                }) {
                    HStack {
                        Image(systemName: team.isVisible ? "eye": "eye.slash")
                        Text(team.title)
                    }
                    .frame(width:120, alignment: .leading)
                    .foregroundColor(team.isVisible ? team.color : .gray)
                }
            }
        }
    }
}

struct TeamList_Previews: PreviewProvider {
    static var previews: some View {
        let work = WorkItems()
        TeamList()
            .environmentObject(work)
    }
}
