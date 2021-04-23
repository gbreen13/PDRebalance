//
//  WorkItemDetailRow.swift
//  PD Rebalance
//
//  Created by George Breen on 4/12/21.
//

import SwiftUI

struct WorkItemDetailRow: View {
    var item: WorkItem
    @EnvironmentObject private var work:WorkItems

    @State private var offset = CGSize(width: 0, height:20)
    @State private var opac = 1.0
    
    var body: some View {
            ZStack {
                Rectangle()
                    .foregroundColor(getBgColor(item: item))
                    .frame(width: CGFloat(work.totalWW() * Int(Constants.WorkWeekWidth)), height: 16)
                HStack {
                    let x1 = work.dateToWW(date: item.startDate) * Int(Constants.WorkWeekWidth)
                    let x2 = work.dateToWW(date: item.endDate) * Int(Constants.WorkWeekWidth)
                    RoundedRectangle(cornerRadius: 20.00, style: .circular)
                        .frame(width: CGFloat(x2-x1), height: 16)
                        .foregroundColor(.green)
                        .opacity(self.opac)
                        .position(x:CGFloat((x1)+(x2-x1)/2))
                        .offset(x: self.offset.width, y: 20)
                        .gesture(
                            DragGesture()
                                .onChanged { gesture in
                                    self.offset = gesture.translation
                                    self.offset.width = self.offset.width / Constants.WorkWeekWidth
                                    self.offset.width = self.offset.width *  Constants.WorkWeekWidth
                                    self.opac = 0.5
                                }
                                
                                .onEnded { _ in
                                    self.opac = 1.0
                                    item.adjustWWOffset(offset:Int(offset.width/Constants.WorkWeekWidth) )
                                    offset = CGSize(width: 0, height:20)
                                }
                        )
                }.frame(height:Constants.GanttTaskHeight)

        }
    }
    func getBgColor(item: WorkItem)->Color {
        guard let i = work.getIndex(wi: item) else {
            return Color.clear
        }
        if (i == work.inspectedIndex) {
            return Color.p_yellow
        }
        return Color.clear
    }
}

struct WorkItemDetailRow_Previews: PreviewProvider {
    static var work = WorkItems()
    static var previews: some View {
        WorkItemDetailRow(item: work.all[0])
            .environmentObject(work)
    }
}
