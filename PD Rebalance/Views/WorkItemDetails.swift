//
//  WorkItemDetails.swift
//  PD Rebalance
//
//  Created by George Breen on 4/12/21.
//

import SwiftUI

struct WorkGantt: View {
    @EnvironmentObject private var work:WorkItems
    
    var body: some View {
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

struct WorkItemDetails: View {
    @EnvironmentObject private var work:WorkItems
    
    var body: some View {
        ScrollViewReader() { proxy in
            ScrollView([.horizontal, .vertical]) {
                LazyVStack(spacing: 10, pinnedViews: [.sectionHeaders]) {
                    Section(header: TimeLineView()) {
                        WorkGantt()
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
