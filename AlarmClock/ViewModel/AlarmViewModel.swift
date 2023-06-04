//
//  AlarmViewModel.swift
//  AlarmClock
//
//  Created by لجين إبراهيم الكنهل on 12/11/1444 AH.
//

import Foundation
import SwiftUI
//
@MainActor class AlarmViewModel: ObservableObject{
    @Published var allAlarms: [Alarm] = [Alarm( name: "Alarm", time: "6:09AM", isOn: false), Alarm( name: "Alarm", time: "7:00AM", isOn: true)]
    
   // @Published var isStart = false
//    init() {
//        self.allAlarms = allAlarms
//    }

    func addAlarm(alarmName: String, alarmTime: String, alarmIsOn: Bool){
        let newAlert = Alarm(name: alarmName, time: alarmTime, isOn: alarmIsOn)
        allAlarms.append(newAlert)
    }

//    func upDateAlarm(newName: String, newTime: String, alarmIsOn: Bool){
//
//
//        //var v: Alarm
//        ForEach(allAlarms){alarm in
//            var index = 0
//            if id == alarm.id {
//
//                var updateAlarm = Alarm(id: alarm.id, name: alarm.name, time: newTime, isOn: alarm.isOn)
//                //allAlarms[index] = newAlarm
//
//
//               // allAlarms.remove(atOffsets: offsets)
//                 allAlarms.remove(at: index)
//               allAlarms.insert(updateAlarm, at: index)
//                  return
//            }
//
//            index = index + 1
//        }
//
//       //
//
//    }
//
//    func upDateName(newName: String, id: UUID){
//
//
//    }
//
    func upDateIsOn( alarmName: String, alarmTime: String, isOn: Bool, id: UUID){

        if let index = allAlarms.firstIndex(where: {$0.id == id}) {
            allAlarms[index] = Alarm( name: alarmName, time: alarmTime, isOn: !isOn)

//        ForEach(allAlarms){alarm in
//            var index = 0
//            if id == alarm.id {
//
//                var newAlarm = Alarm( name: alarm.name, time: alarm.time, isOn: isOn)
//                allAlarms[index] = newAlarm
//            }
//            index = index + 1
        }
   }

    func deleteAlarm( at offsets: IndexSet){

        allAlarms.remove( atOffsets: offsets)

            }

}












//
//class EventsViewModelPG: ObservableObject {
//    @Published var events: [EventPG]
//
//    init() {
//        let alarms = [Alarm(title: "todo item one",time: "3:00PM"), Alarm(title: "todo item two",time: "2:00PM"), Alarm(title: "todo item three",time: "7:00PM")]
//        self.events = [EventPG(title: "event one", alarms: alarms)]
//    }
//
//    func update(event: EventPG) {
//        print("update")
//        self.events = events.map{ ($0.id == event.id) ? event : $0}
//    }
//
//    func addEvent(event: EventPG) {
//        self.events.append(event)
//    }
//
//}
