//
//  WorkItemDetailRow.swift
//  PD Rebalance
//
//  Created by George Breen on 4/12/21.
//

import SwiftUI

struct WorkItemDetailRow: View {
    var index: Int
    @EnvironmentObject private var work:WorkItems
    
    @State private var offset = CGSize(width: 0, height:20)
    @State private var opac = 1.0
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(getBgColor(index: index))
                .frame(width: CGFloat(work.totalWW() * Int(Constants.WorkWeekWidth)), height: 16)
            HStack {
                let x1 = work.dateToWW(date: work.all[index].startDate) * Int(Constants.WorkWeekWidth)
                let x2 = work.dateToWW(date: work.all[index].endDate) * Int(Constants.WorkWeekWidth)
                RoundedRectangle(cornerRadius: 20.00, style: .circular)
                    .frame(width: CGFloat(x2-x1), height: 16)
                    .foregroundColor(.green)
                    .opacity(self.opac)
                    .position(x:CGFloat((x1)+(x2-x1)/2))
                    .offset(x: self.offset.width, y: 20)
                    .gesture(
                        DragGesture()
                            .onChanged { gesture in
                                work.inspectedIndex = index
                                self.offset = gesture.translation
                                self.offset.width = self.offset.width / Constants.WorkWeekWidth
                                self.offset.width = self.offset.width *  Constants.WorkWeekWidth
                                self.opac = 0.5
                            }
                            
                            .onEnded { _ in
                                self.opac = 1.0
                                work.all[index].adjustWWOffset(offset:Int(offset.width/Constants.WorkWeekWidth) )
                                offset = CGSize(width: 0, height:20)
                            }
                    )
                
            }
        }.frame(height:Constants.GanttTaskHeight)
        
    }

    func getBgColor(index: Int)->Color {
        
        if (index == work.inspectedIndex) {
            return Color.p_yellow
        }
        return Color.clear
    }
}

struct WorkItemDetailRow_Previews: PreviewProvider {
    static var work = WorkItems()
    static var previews: some View {
        WorkItemDetailRow(index: 0)
            .environmentObject(work)
    }
}
