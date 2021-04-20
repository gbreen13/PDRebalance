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
        ScrollView([.vertical]) {
            ScrollViewReader { proxy in
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
            GeometryReader { proxy in
                let offset = proxy.frame(in: .named("scroll")).minY
                Color.clear.preference(key: ScrollViewOffsetPreferenceKey.self, value: Int(offset))
            }
        }
        .coordinateSpace(name: "scroll")
        .onPreferenceChange(ScrollViewOffsetPreferenceKey.self) { value in
            var nv = work.all.count - value/Int(Constants.GanttTaskHeight)
            if(nv < 0) {nv = 0}
            if(nv >= (work.all.count-1)) {nv = work.all.count-1}
            print(nv)
            work.topLeftLine = nv // new
        }
    }
}

struct ScrollViewOffsetPreferenceKey: PreferenceKey {
    static var defaultValue: Int = 0
    
    static func reduce(value: inout Int, nextValue: () -> Int) {
        value = nextValue()
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

