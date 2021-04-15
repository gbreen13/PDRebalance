//
//  WorkItemForm.swift
//  PD Rebalance
//
//  Created by George Breen on 4/13/21.
//

import SwiftUI


struct WorkItemForm: View {
    var item: WorkItem
    
    @EnvironmentObject private var work:WorkItems
        
    var body: some View {
        Form {
            Text(work.all[work.inspectedIndex].title)
        }
    }
}

struct WorkItemForm_Previews: PreviewProvider {
    static var work = WorkItems()
    static var previews: some View {
        WorkItemForm(item: work.all[0])
            .environmentObject(work)
    }
}
