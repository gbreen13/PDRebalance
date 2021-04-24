//
//  WorkItemListRow.swift
//  PD Rebalance
//
//  Created by George Breen on 4/8/21.
//

import SwiftUI


struct WorkItemTitleRow: View {
    var item: WorkItem
    var bgshade: Bool
    @EnvironmentObject private var work:WorkItems

    var body: some View {
            HStack {
                Circle()
                    .fill(colorMap[item.priorityGroup]!)
                    .frame(width: 14, height: 14)
                Text(item.shortDescription)
                    .frame(width: 200, height:30)
            }.frame(width: 240, height:Constants.GanttTaskHeight)
            .background(getBgColor(item: item, sh: bgshade))
    }
    func getBgColor(item: WorkItem, sh: Bool)->Color {
        guard let i = work.getIndex(wi: item) else {
            return sh ? Color.white : Color.lightgrayWhite
        }
        if (i == work.inspectedIndex) {
            return Color.p_yellow
        }
        return sh ? Color.white : Color.lightgrayWhite
    }
}


struct WorkItemTitleRow_Previews: PreviewProvider {
    static var work = WorkItems()
    static var previews: some View {
        WorkItemTitleRow(item: work.all[0], bgshade: true)
            .environmentObject(work)
    }
}

