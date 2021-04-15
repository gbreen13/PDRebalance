//
//  TimeLineView.swift
//  PD Rebalance
//
//  Created by George Breen on 4/9/21.
//

import SwiftUI

struct DateWeekView: View {
    
    var date: Date
    @EnvironmentObject private var work:WorkItems
    static let dayDateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd"
        return formatter
    }()

    var body: some View {
        let wk = Calendar.current.component(.weekOfYear, from: date)
        VStack {
            Text("\(date, formatter: Self.dayDateFormat)")
            Text("W:\(wk)")
        }.frame(width: Constants.WorkWeekWidth)
    }
}
struct TimeLineView: View {
    @EnvironmentObject private var work:WorkItems
    var body: some View {
        ScrollView(){
            HStack(spacing:0) {
                ForEach (work.dates, id:\.self) { d in
                    DateWeekView(date: d)
                }
            }
        }
    }
}

struct TimeLineView_Previews: PreviewProvider {
    static var previews: some View {
        TimeLineView()
            .environmentObject(WorkItems())
    }
}
