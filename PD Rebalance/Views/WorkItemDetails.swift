//
//  WorkItemDetails.swift
//  PD Rebalance
//
//  Created by George Breen on 4/12/21.
//

import SwiftUI

struct WWGridLines: View {
    @EnvironmentObject private var work:WorkItems
    
    var body: some View {
        ForEach(0..<work.dates.count) { index in
            Path { path in
                path.move(to: CGPoint(x: Int(Constants.WorkWeekWidth) * index, y: 0))
                path.addLine(to: CGPoint(x: Int(Constants.WorkWeekWidth) * index, y:Int(Constants.WorkLoadViewHeight) * work.all.count))
            }
            .stroke(Color.white, lineWidth: 1)
        }
    }
}

struct WorkGantt: View {
    @EnvironmentObject private var work:WorkItems
    
    var body: some View {
        ZStack {
            WWGridLines()
            VStack(spacing:0) {
                ForEach(0..<work.all.count) { index in
                    let pc = work.priorityClass.first(where: {$0.name == work.all[index].priorityGroup})
                    if pc != nil && pc!.isVisible {
                        WorkItemDetailRow(item: work.all[index])
                            .id(index)
                            .border(Color.white)
                    }
                }
            }
        }
    }
}

struct WorkItemTitleList: View {
    @EnvironmentObject private var work:WorkItems

    var body: some View {


        VStack(alignment: .leading, spacing:0) {
            Image(systemName: "plus.circle").frame(width: 40, height: 40)
            ForEach(0..<work.all.count) { index in
                let pc = work.priorityClass.first(where: {$0.name == work.all[index].priorityGroup})
                
                if pc != nil && pc!.isVisible {
                    Button(action: {
                        work.inspectedIndex = index
                    }) {
                        VStack(spacing:0) {
                            WorkItemTitleRow(item: work.all[index], bgshade: (index % 2 == 0))
                            
                        }
                    }.buttonStyle(PlainButtonStyle())
                    
                }
            }
        }
    }
}

struct WorkItemDetails: View {
    @EnvironmentObject private var work:WorkItems
    
    var body: some View {
        ScrollViewReader() { proxy in
            ScrollView([.horizontal, .vertical]) {
                HStack(alignment: .top) {
                    WorkItemTitleList()
                        .frame(width:240, alignment: .top)
                    LazyVStack(spacing: 10, pinnedViews: [.sectionHeaders]) {
                        Section(header: TimeLineView()) {
                            WorkGantt()
                        }
                    }
                }
            }
            .onChange(of: work.topLeftLine) { value in
                withAnimation {
                    proxy.scrollTo(value+1, anchor: .topLeading)
                }
            }

        }
    }
}

struct WorkItemDeails_Previews: PreviewProvider {
    static var previews: some View {
        ForEach([ColorScheme.light, .dark], id: \.self) { scheme in
            NavigationView {
                WorkItemDetails()
            }
            .navigationTitle("Work Items")
            .environmentObject(WorkItems())
            .preferredColorScheme(scheme)
        }
    }
}
