//
//  TestUI.swift
//  PD Rebalance
//
//  Created by George Breen on 4/12/21.
//

import SwiftUI

struct LeftView: View {
    @EnvironmentObject private var work:WorkItems

    var body: some View {

        ScrollView([.vertical]) {
           ForEach(0 ..< 50) { i in
                Text("\(i):absmn adnba sdmnab sdasmnbd ad")
                    .frame(height:20)
                    .id(i)
            }
        }
    }
}
    
struct RightView: View {
    @EnvironmentObject private var work:WorkItems
    
    var body: some View {
        
        ScrollView([.vertical]) {
            ForEach(0 ..< 50) { i in
                Text("\(i):a1231231231312312321313")
                    .frame(height:20)
                    .id(i)
            }
        }
    }
}


struct TestUI: View {
    var body: some View {
        ScrollView([.horizontal]) {
            LazyHStack(spacing: 10, pinnedViews: [.sectionHeaders]) {
                Section(header: LeftView()) {
                    RightView()
                }
            }
        }
    }
}

struct TestUI_Previews: PreviewProvider {
    static var previews: some View {
        TestUI()
            .environmentObject(WorkItems())
    }
}
