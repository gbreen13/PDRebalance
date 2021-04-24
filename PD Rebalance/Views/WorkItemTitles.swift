//
//  WorkItemList.swift
//  PD Rebalance
//
//  Created by George Breen on 4/7/21.
//

import SwiftUI

struct WorkItemTitleList: View {
    @EnvironmentObject private var work:WorkItems
    
    var body: some View {
        
        NavigationView {
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
            }.onMove(perform: move)
        }
        }
    }
    func move(from source: IndexSet, to destination: Int) {
//        work.move(fromOffsets: source, toOffset: destination)
    }
}
struct WorkItemTitles_Previews: PreviewProvider {
    static var previews: some View {
        ForEach([ColorScheme.light, .dark], id: \.self) { scheme in
            NavigationView {
                WorkItemTitleList()
            }
            .navigationTitle("Work Items")
            .environmentObject(WorkItems())
           .preferredColorScheme(scheme)
        }
    }
}

