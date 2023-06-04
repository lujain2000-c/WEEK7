//
//  AlarmModel.swift
//  AlarmClock
//
//  Created by لجين إبراهيم الكنهل on 12/11/1444 AH.
//

import Foundation

struct Alarm:  Identifiable, Equatable{
    let id = UUID()
    let name: String
    var time: String
    let isOn: Bool
}

//
//struct EventPG: Identifiable, Equatable {
//   // static func == (lhs: EventPG, rhs: EventPG) -> Bool {
//  //      <#code#>
//   // }
//    
//    var id = UUID().uuidString
//    var title: String
//    
//    var alarms: [Alarm]
//    
//    var totalOnAlarm: Int {
//        return alarms.filter{ !$0.isOn }.count
//    }
//    
//    static func == (lhs: EventPG, rhs: EventPG) -> Bool {
//           return lhs.id == rhs.id
//       }
//}
