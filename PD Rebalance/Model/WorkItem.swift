//
//  WorkItem.swift
//  PD Rebalance
//
//  Created by George Breen on 4/6/21.
//

import Foundation


enum Role {
    case em(String),lead(String),sse(String),qae(String),devops(String)
}

struct Emp {
    var isContractor: Bool
    var job: Role
    var name: String    // maybe
}

struct workEffort: Identifiable {
    var id:Int
    var team: Team
    var startDate: Date
    var endDate: Date
    var manWeeks: Double
    var calWeeks: Int
}

extension workEffort {
    
    init?(for id: Team.ID, sd: Date, ed: Date, mw: Double, cw: Int) {
        self.team = Team(for: id)!
        self.id = self.team.getIndex()
        self.startDate = sd
        self.endDate = ed
        self.manWeeks = mw
        self.calWeeks = cw;
    }
}


class WorkItem: Identifiable, ObservableObject {
    var id:UUID
    @Published private(set) var startDate:  Date
    @Published private(set) var endDate: Date
    @Published private(set) var dueDate: Date?
    @Published private(set) var title: String
    @Published private(set) var shortDescription: String
    @Published private(set) var nominalManWeeks: Double
    @Published private(set) var workEfforts: [workEffort] = []
    @Published private(set) var children: [WorkItem]
    @Published private(set) var dependencies: [WorkItem]
    @Published private(set) var rank: Int = 0
    @Published private(set) var priorityGroup: String
    @Published private(set) var inProgress: Bool = true
    
    init(from gsWI:GSWorkItem) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ"
        var sd: Date
        
        self.title = gsWI.name ?? "Not Defined"
        if gsWI.startDate == nil {
            sd = Date()
        } else {
            sd = dateFormatter.date(from: gsWI.startDate!)!
        }
        self.nominalManWeeks = gsWI.size ?? 0.0
        if gsWI.dueDate == nil {
            self.dueDate = nil      // no Due Date.
        } else {
            self.dueDate = dateFormatter.date(from: gsWI.dueDate!)!
        }

        if gsWI.endDate == nil {
            self.endDate = Calendar.current.date(byAdding: .weekOfYear, value: 1, to: sd)!
        }else {
            self.endDate = dateFormatter.date(from: gsWI.endDate!)!
        }
        self.inProgress = true
        if gsWI.inProgress != nil {
            if gsWI.inProgress == "Yes" {
                self.inProgress = true
            }
        }
        
        self.shortDescription = gsWI.shortDescription ?? (gsWI.name ?? "Not Defined")
        self.children = []
        self.dependencies = []
        self.startDate = sd
        self.id = UUID()
        if gsWI.groupPriority != nil {
            self.priorityGroup = gsWI.groupPriority!
        } else {
            self.priorityGroup = "unprioritized"
        }
        
        if (gsWI.aaweeks != nil) && (gsWI.aaweeks! > 0.0) {
            self.workEfforts.append(workEffort(for: "aa", sd: startDate,
                                               ed: Calendar.current.date(byAdding: .weekOfYear, value: gsWI.aaduration!, to: startDate)!, mw: gsWI.aaweeks!, cw:gsWI.aaduration!)!)
        }
        if (gsWI.afweeks != nil) && (gsWI.afweeks! > 0.0) {
            self.workEfforts.append(workEffort(for: "af", sd: startDate,
                                               ed: Calendar.current.date(byAdding: .weekOfYear, value: gsWI.afduration!, to: startDate)!, mw: gsWI.afweeks!, cw:gsWI.afduration!)!)
        }
        if (gsWI.daweeks != nil) && (gsWI.daweeks! > 0.0) {
            self.workEfforts.append(workEffort(for: "da", sd: startDate,
                                               ed: Calendar.current.date(byAdding: .weekOfYear, value: gsWI.daduration!, to: startDate)!, mw: gsWI.daweeks!, cw:gsWI.daduration!)!)
        }
        if (gsWI.tsweeks != nil) && (gsWI.tsweeks! > 0.0) {
            self.workEfforts.append(workEffort(for: "ts", sd: startDate,
                                               ed: Calendar.current.date(byAdding: .weekOfYear, value: gsWI.tsduration!, to: startDate)!, mw: gsWI.tsweeks!, cw:gsWI.tsduration!)!)
        }
    }

    
    convenience init() {
        let decoder = JSONDecoder()
        let jsonData = def
        var gsWorkItems: [GSWorkItem]
        do {
            
            gsWorkItems = try decoder.decode([GSWorkItem].self, from: jsonData)
            self.init(from: gsWorkItems[0])
        } 
        catch {
            print (error)
            self.init()
        }
    }
    
    func adjustWWOffset(offset: Int) {
        startDate = Calendar.current.date(byAdding: .weekOfYear, value: offset, to: startDate)!
        endDate = Calendar.current.date(byAdding: .weekOfYear, value: offset, to: endDate)!
   }


}
let def = """
    [
    {
    "rank": 1,
    "groupPriority": "Gold",
    "name": "New Task",
    "value": "$",
    "size": 11,
    "duration": 18,
    "contractorDuration": 0,
    "startDate": "2021-03-01T05:00:00.000Z",
    "completeDate": "2021-07-05T04:00:00.000Z",
    "dueDate": "2021-06-30T04:00:00.000Z",
    "afweeks": 1,
    "opsweeks": 2,
    "csweeks": 8
    }
    ]
    """
    .data(using: .utf8)!

