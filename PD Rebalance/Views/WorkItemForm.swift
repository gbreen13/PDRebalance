//
//  WorkItemForm.swift
//  PD Rebalance
//
//  Created by George Breen on 4/13/21.
//

import SwiftUI


struct WorkItemForm: View {
    var we: WorkItem

    @EnvironmentObject private var work:WorkItems
    

    /*    @Binding var text: String
    var name: String

    init(_ name: String, _ text: Binding<String>) {
        self.name = name
        
        // Beta 3
        // self.$text = text
        
        // Beta 4
        self._text = text
    }
    
    var body: some View {
        TextField(name, text: $text)
    }
 */
    var body: some View {
        Form {
            Section(header: Text(self.we.shortDescription)) {
                Text(self.we.title)
                Text("Index: \(Int(work.getIndex(wi: self.we)!))")
            }
        }
    }
}

struct WorkItemForm_Previews: PreviewProvider {
    static var work = WorkItems()
    
    static var previews: some View {
        WorkItemForm(we: work.all[0])
            .environmentObject(work)
    }
}
