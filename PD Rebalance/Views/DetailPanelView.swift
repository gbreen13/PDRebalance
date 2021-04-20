//
//  DetailPanelView.swift
//  PD Rebalance
//
//  Created by George Breen on 4/12/21.
//

import SwiftUI

struct DetailPanelView: View {
    var body: some View {
        VStack {
            HStack {
                WorkItemTitles().frame(width:240)
                WorkItemDetails()
            }
            Text("Bottom Part")
                .frame(height:150)
        }
    }
}

struct DetailPanelView_Previews: PreviewProvider {
    static var previews: some View {
        DetailPanelView()
            .environmentObject(WorkItems())
    }
}
