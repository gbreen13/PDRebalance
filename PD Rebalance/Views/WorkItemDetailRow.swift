//
//  WorkItemDetailRow.swift
//  PD Rebalance
//
//  Created by George Breen on 4/12/21.
//

import SwiftUI

struct WorkEffortGraphGanttLine: View {
    var index: Int
    @EnvironmentObject private var work:WorkItems
    
    @State private var opac = 1.0
    @State private var offset = CGSize(width: 0, height:20)

    
    var body: some View {
        
        let x1 = work.dateToWW(date: work.all[index].startDate) * Int(Constants.WorkWeekWidth)
        let x2 = work.dateToWW(date: work.all[index].endDate) * Int(Constants.WorkWeekWidth)
        Path { path in
            path.move(to: CGPoint(x: Int(self.offset.width)+x1, y: 20))
            path.addLine(to: CGPoint(x: Int(self.offset.width)+x2, y:20))
        }
        .stroke(Color.gray, lineWidth: 6)
        .opacity(self.opac)
        .gesture(
            DragGesture()
                .onChanged { gesture in
                    work.inspectedIndex = index
                    self.offset = gesture.translation
//                    work.all[index].adjustWWOffset(offset:Int(offset.width/Constants.WorkWeekWidth) )
                   self.opac = 0.5
                }
                
                .onEnded { _ in
                    self.opac = 1.0
                    work.all[index].adjustWWOffset(offset:Int(offset.width/Constants.WorkWeekWidth) )
                    offset = CGSize(width: 0, height:20)
                }
        )
    }
}
struct WorkEffortGraphWorkEffortLine: View {
    var index: Int
    var we: workEffort
    
    @EnvironmentObject private var work:WorkItems

    @State private var opac = 1.0
    @State private var offset = CGSize(width: 0, height:20)

    var body: some View {
        
        let x1 = (work.dateToWW(date: work.all[index].startDate) + we.weekOffset) * Int(Constants.WorkWeekWidth)
        let x2 = (work.dateToWW(date: work.all[index].startDate) + we.weekOffset + we.calWeeks) * Int(Constants.WorkWeekWidth)
        
        ZStack {
            RoundedRectangle(cornerRadius: 16.00, style: .circular)
                .frame(width: CGFloat(x2-x1), height: 16)
                .foregroundColor(work.team[we.id].color)
                .opacity(0.5)
                .position(x:CGFloat((x1)+(x2-x1)/2))
                .offset(x: self.offset.width, y: 20)
            Text(work.team[we.id].id).position(x:CGFloat((x1)+(x2-x1)/2))
        }

    }
}

struct WorkEffortGraph: View {
    var index: Int
    @EnvironmentObject private var work:WorkItems
    
    var body: some View {
        
        ZStack {
            WorkEffortGraphGanttLine(index:index)
            ForEach(work.all[index].workEfforts, id: \.id) { effort in
                if(work.team[effort.id].isVisible) {
                    WorkEffortGraphWorkEffortLine(index: index, we: effort)
                }
            }
            
        }.frame(height:Constants.GanttTaskHeight)
    }
    
}

struct WorkItemDetailRow: View {
    var index: Int
    @EnvironmentObject private var work:WorkItems
    
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(getBgColor(index: index))
                .frame(width: CGFloat(work.totalWW() * Int(Constants.WorkWeekWidth)), height: 16)
            WorkEffortGraph(index: index)
       
        }
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
