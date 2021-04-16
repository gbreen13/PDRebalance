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
            ScrollViewReader { proxy in
                    ForEach(0 ..< 50) { i in
                        Text("\(i):absmn adnba sdmnab sdasmnbd ad")
                            .frame(height:20)
                            .id(i)
                    }
                    .onChange(of: work.topRightLine) { value in
                        withAnimation {
                            proxy.scrollTo(value, anchor: .top)
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
            var nv = 50 - value/20
            if(nv < 0) {nv = 0}
            if(nv >= 49) {nv = 49}
            print(nv)
            work.topRightLine = nv // new
            work.topLeftLine = nv
        }
    }
}
    
struct ScrollViewOffsetPreferenceKey: PreferenceKey {
    static var defaultValue: Int = 0
    
    static func reduce(value: inout Int, nextValue: () -> Int) {
        value = nextValue()
    }
}

struct ScrollViewOffsetPreferenceKey2: PreferenceKey {
    static var defaultValue: Int = 0
    
    static func reduce(value: inout Int, nextValue: () -> Int) {
        value = nextValue()
    }
}


struct RightView: View {
    @EnvironmentObject private var work:WorkItems

    var body: some View {
        ScrollView([.vertical]) {
            ScrollViewReader { proxy in
                ForEach(0 ..< 50) { i in
                    HStack {
                        Circle()
                            .fill(Color.red)
                            .frame(width: 10)
                        Text("\(i):m    m m dm   m dm m m m m m ")
                    }.id(i)
                }
                .onChange(of: work.topLeftLine) { value in
                    withAnimation {
                        proxy.scrollTo(value, anchor: .top)
                    }
                }

            }
            GeometryReader { proxy in
                let offset = proxy.frame(in: .named("scroll2")).minY
                Color.clear.preference(key: ScrollViewOffsetPreferenceKey2.self, value: Int(offset))
            }
        }
        .coordinateSpace(name: "scroll2")
        .onPreferenceChange(ScrollViewOffsetPreferenceKey2.self) { value in
            var nv = 50 - value/20
            if(nv < 0) {nv = 0}
            if(nv >= 49) {nv = 49}
            print(nv)
            work.topLeftLine = nv // new
            work.topRightLine = nv
        }

    }
}

struct TestUI: View {
    var body: some View {
        HSplitView  {
            LeftView()
            RightView()
        }
    }
}

struct TestUI_Previews: PreviewProvider {
    static var previews: some View {
        TestUI()
            .environmentObject(WorkItems())
    }
}
