//
//  WorkItemList.swift
//  PD Rebalance
//
//  Created by George Breen on 4/7/21.
//

import SwiftUI

struct WorkItemTitles: View {
    @EnvironmentObject private var work:WorkItems
    
    @State var bgshade = false
    
    
    var body: some View {
            ScrollViewReader { proxy in
                ScrollView([.horizontal, .vertical]) {
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
    }
}

struct WorkItemTitles_Previews: PreviewProvider {
    static var previews: some View {
        ForEach([ColorScheme.light, .dark], id: \.self) { scheme in
            NavigationView {
                WorkItemTitles()
            }
            .navigationTitle("Work Items")
            .environmentObject(WorkItems())
           .preferredColorScheme(scheme)
        }
    }
}

