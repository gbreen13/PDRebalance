//
//  GSWorkItems.swift
//  PD Rebalance
//
//  Created by George Breen on 4/6/21.
//

import Foundation
/*
 "rank": 38,
 "groupPriority": "Green",
 "shortDescription": "UK Cloud",
 "name": "UK Cloud - July deadline but Michael can move if needed",
 "value": "$",
 "size": 9.5,
 "duration": 11,
 "startDate": "2021-06-01T04:00:00.000Z",
 "endDate": "2021-10-01T04:00:00.000Z",
 "aaweeks": 0.5,
 "aaduration": 1,
 "afweeks": 0.5,
 "afduration": 1,
 "daweeks": 5,
 "daduration": 5,
 "tsweeks": 0.5,
 "tsduration": 1,
 "systestweeks": 1,
 "systestduration": 1,
 "resengduration": 0,
 "opsweeks": 2,
 "opsduration": 2,
 "csduration": 0,
 "extduration": 0,
 "iotduration": 0
 */
struct GSWorkItem: Codable {
    var rank: Int? = 0
    var groupPriority: String? = ""
    var shortDescription: String? = ""
    var name: String? = ""
    var value: String? = ""
    var size: Double? = 0.0
    var duration: Int? = 0
    var contractorDuration: Int? = 0
    var startDate: String?
    var endDate: String?
    var dueDate: String?
    var inProgress: String? = "no"
    var aaweeks: Double? = 0.0       // weeks represents man weeka and are float, durations timelines in calendar weeks.  7 man weeks in 1 week duration requires 7 people
    var aaduration: Int? = 0
    var afweeks: Double? = 0.0
    var afduration: Int? = 0
    var daweeks: Double? = 0.0
    var daduration: Int? = 0
    var tsweeks: Double? = 0.0
    var tsduration: Int? = 0
    var iotweeks: Int? = 0
    var systestweeks: Double? = 0.0
    var systemtduration: Int? = 0
    var opsweeks: Double? = 0.0
    var csweeks: Double? = 0.0
    var secweeks: Double? = 0.0
    var extweeks: Double? = 0.0
    var churnTt: String? = ""
    var ivrTt: String? = ""
    var effTf: String? = ""
}

