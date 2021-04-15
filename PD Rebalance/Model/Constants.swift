//
//  Constants.swift
//  PD Rebalance
//
//  Created by George Breen on 4/12/21.
//

import Foundation
import SwiftUI


struct Constants {
//
//  SwiftUI view constants
//
    static let WorkWeekWidth:CGFloat = 40.0             // # pixels between each WW on the gantt chart
    static let GanttTaskHeight: CGFloat = 38.0          // Height of each task
    static let C_StartDate = "4/1/2021"                 // when does the chart start
    static let C_EndDate = "1/1/2023"                   // and end
    static let WorkLoadViewHeight = 160.0               // height of the work load graph at the bottom.

}
extension Color {
    public static var lightgrayWhite: Color {
        return Color(red: 238.0 / 255.0, green: 238.0 / 255.0, blue: 238.0 / 255.0)
    }
    
    public static var darkerWhite: Color {
        return Color(red: 200.0 / 255.0, green: 200.0 / 255.0, blue: 200.0 / 255.0)
    }
    public static var p_redorange: Color {
        return Color(red: 234.0 / 255.0, green: 64 / 255.0, blue: 61.0 / 255.0)
    }
    public static var p_red: Color {
        return Color(red: 234.0 / 255.0, green: 50.0 / 255.0, blue: 39.0 / 255.0)
    }
    public static var p_redpurple: Color {
        return Color(red: 163.0 / 255.0, green: 33.0 / 255.0, blue: 142.0 / 255.0)
    }
    public static var p_purple: Color {
        return Color(red: 90.0 / 255.0, green: 42.0 / 255.0, blue: 146.0 / 255.0)
    }
    public static var p_bluepurple: Color {
        return Color(red: 35.0 / 255.0, green: 60.0 / 255.0, blue: 153.0 / 255.0)
    }
    public static var p_blue: Color {
        return Color(red: 42.0 / 255.0, green: 99.0 / 255.0, blue: 179.0 / 255.0)
    }
    public static var p_bluegreen: Color {
        return Color(red: 74.0 / 255.0, green: 165.0 / 255.0, blue: 165.0 / 255.0)
    }
    public static var p_green: Color {
        return Color(red: 74.0 / 255.0, green: 164.0 / 255.0, blue: 95.0 / 255.0)
    }
    public static var p_yellowgreen: Color {
        return Color(red: 115.0 / 255.0, green: 191.0 / 255.0, blue: 156.0 / 255.0)
    }
    public static var p_yellow: Color {
        return Color(red: 253.0 / 255.0, green: 243.0 / 255.0, blue: 81.0 / 255.0)
    }
    public static var p_yelloworange: Color {
        return Color(red: 241.0 / 255.0, green: 166.0 / 255.0, blue: 59.0 / 255.0)
    }
    public static var p_orange: Color {
        return Color(red: 238.0 / 255.0, green: 131.0 / 255.0, blue: 50.0 / 255.0)
    }
}
