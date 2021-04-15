//
//  WorkItems.swift
//  PD Rebalance
//
//  Created by George Breen on 4/6/21.
//
//
//  This is the model for all work items.
//

import Foundation

struct PC : Identifiable {
    var id: UUID
    var name: String
    var isVisible: Bool
}

enum TeamIndex: Int {
    case aa=0, af=1, da=2, ts=3, iot=4, systest=5, ops=6, cs=7, sec=8, ext=9
}



class WorkItems: ObservableObject {
    @Published var all: [WorkItem] = []
    @Published var priorityClass: [PC] = []
    @Published var team : [Team] = Team.all
    @Published var startDate: Date
    @Published var endDate: Date
    @Published var dates: [Date] = []
    @Published var topLeftLine = 0                  // when this changes, the scroll windws scroll together.
    @Published var topRightLine = 0                 // when this changes, the scroll windws scroll together.
    @Published var inspectedIndex = 0               // which one is in the Inspection box
    @Published var WeeklyCapacity: [[Int]]  = [[]]  // one for each MW, one for each team.

    let c = Constants()
    
    init() {

        var gsWorkItems: [GSWorkItem]
        let jsonData = jsonTestData.data(using: .utf8)!

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        startDate = dateFormatter.date(from: Constants.C_StartDate)!
        endDate = dateFormatter.date(from: Constants.C_EndDate)!
        let cal = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)
        var d = startDate
        
        while d < endDate {
            dates.append(d)
            d = cal!.date(byAdding: NSCalendar.Unit.day, value: 7, to: d, options: NSCalendar.Options.matchLast)!
        }
        do {
            let decoder = JSONDecoder()
            gsWorkItems = try decoder.decode([GSWorkItem].self, from: jsonData)
            for item in gsWorkItems {
                let wi = WorkItem(from: item)
                if !priorityClass.contains(where: {$0.name == wi.priorityGroup}) {
                    let newPriority = PC(id: UUID(), name: wi.priorityGroup, isVisible: true)
                    priorityClass.append(newPriority)
                }
                all.append(wi)
            }
            print(all)
            print("Rows in array: \(gsWorkItems.count)")
        }
        catch {
            gsWorkItems = []
            print (error)
            return
        }
      
    }
    // return number of man weeks from date from startDate
    
    func dateToWW(date:Date)->Int {
        var d = date
        if (d < startDate) { d = startDate}
        if (d  > endDate) { d = endDate}
        return Calendar.current.dateComponents([.day], from: startDate, to: d).day! / 7
    }
    
    func totalWW()->Int {
        return Calendar.current.dateComponents([.day], from: startDate, to: endDate).day! / 7
    }

    func getIndex(wi: WorkItem)->Int? {
        return all.firstIndex(where: {$0.id == wi.id})
    }
}
