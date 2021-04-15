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
            ScrollViewReader { proxy in
                HSplitView {
                    WorkItemTitles()
                        .frame(width: 240)
                    WorkItemDetails()
                }
            }
//            Text("Bottom Part")
            TestUI()
                .frame(height:CGFloat(Constants.WorkLoadViewHeight))
        }
    }
}

struct DetailPanelView_Previews: PreviewProvider {
    static var previews: some View {
        DetailPanelView()
            .environmentObject(WorkItems())
    }
}
