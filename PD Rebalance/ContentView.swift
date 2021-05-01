//
//  ContentView.swift
//  PD Rebalance
//
//  Created by George Breen on 4/4/21.
//

import SwiftUI

struct DetailPane: View {
    var body: some View {
        Text("Details")
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
    }
}
struct InspectorPane: View {
    var body: some View {
        VStack {
            Text("Inspector")
        }
        .padding()
    }
}
struct ContentView: View {
    @EnvironmentObject private var work:WorkItems

    var body: some View {
       NavigationView {
            VStack {
                PriorityList()
                TeamList()
            }
            HSplitView {
                DetailPanelView()
                WorkItemForm(we: work.all[work.inspectedIndex])
                    .frame(maxWidth: 360, maxHeight: .infinity, alignment: .center)
            }
            .toolbar {
                ToolbarItem {
                    Image(systemName: "person.crop.circle")
                }
            }
       }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(WorkItems())

    }
}
