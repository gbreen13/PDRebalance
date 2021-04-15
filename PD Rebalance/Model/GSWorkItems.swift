//
//  GSWorkItems.swift
//  PD Rebalance
//
//  Created by George Breen on 4/6/21.
//

import Foundation

struct GSWorkItem: Codable {
    var rank: Int? = 0
    var groupPriority: String? = ""
    var name: String? = ""
    var value: String? = ""
    var size: Int? = 0
    var duration: Int? = 0
    var contractorDuration: Int? = 0
    var startDate: String?
    var completeDate: String?
    var dueDate: String?
    var inProgress: String? = "no"
    var aaweeks: Int? = 0
    var afweeks: Int? = 0
    var daweeks: Int? = 0
    var tsweeks: Int? = 0
    var iotweeks: Int? = 0
    var systestweeks: Int? = 0
    var opsweeks: Int? = 0
    var csweeks: Int? = 0
    var secweeks: Int? = 0
    var extweeks: Int? = 0
    var churnTt: String? = ""
    var ivrTt: String? = ""
    var effTf: String? = ""
}

