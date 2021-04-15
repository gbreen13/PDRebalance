//
//  PriorityList.swift
//  PD Rebalance
//
//  Created by George Breen on 4/8/21.
//

import SwiftUI
var colorMap: [String: Color] = ["Gold":.yellow, "Green":.green, "Pink":.pink, "Blue":.blue,"unprioritized": .gray]
struct PriorityList: View {
    @EnvironmentObject private var work:WorkItems
    
    var body: some View {
        List {
            Text("Priority Class")
            
            ForEach(work.priorityClass, id: \.id) { pri in
                // step is NSObject type, so you'll need it cast to your model
                Button(action: {
                    let index = work.priorityClass.firstIndex(where: {$0.name == pri.name})
                    work.priorityClass[index!].isVisible.toggle()
                }) {
                    HStack {
                        Image(systemName: pri.isVisible ? "eye": "eye.slash")
                        Text(pri.name)
                    }
                    .frame(width:90, alignment: .leading)
                    .foregroundColor(pri.isVisible ? colorMap[pri.name] : .gray)
                }


            }
        }
    }
}

struct PriorityList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach([ColorScheme.light, .dark], id: \.self) { scheme in
            NavigationView {
                PriorityList()
                    .navigationTitle("Work Items")
                    .environmentObject(WorkItems())
            }
            .preferredColorScheme(scheme)
        }
        
    }
}

