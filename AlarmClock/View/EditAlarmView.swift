//
//  EditAlarmView.swift
//  AlarmClock
//
//  Created by لجين إبراهيم الكنهل on 13/11/1444 AH.
//

import SwiftUI

struct EditAlarmView: View {
  //  @ObservedObject var vm = AlarmViewModel()
    @Environment(\.dismiss) var dismiss
    var clocks = ["01","02","03","04","05","06","07","08","09", "10", "11", "12", "13", "14", "15","16", "17","18","19", "20","21","22","23","24"]
        @State private var selectedClock = "01"
    var minutes = ["01","02","03","04","05","06","07","08","09","10","11","12","13", "14","15","16", "17","18","19", "20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","56","57","58","59"]
    @State private var selectedMinutes = "01"
    var am_pm = ["AM","PM"]
    @State private var selectedAm_Pm = "AM"
    @State private var snooze = true
    @State var textField: String = " "

        var body: some View {
            ZStack{
                
                Color(.black)
                    .opacity(0.9)
                VStack{
                    
                    HStack(spacing: 110){
                       
                        Button("Cancel") {
                            dismiss()
                            
                        }
                        
                        Text("Edit Alarm")
                            .foregroundColor(.white)
                            .bold()
                        
                        Button("Save") {
                        //newTime: String, newTName: String, alarmIsOn: , id: UUID
                        //    vm.upDateAlarm( newName: textField, newTime: selectedClock + selectedMinutes + selectedAm_Pm, alarmIsOn: snooze)
                            dismiss()
                        }
                    }.font(.footnote)
                        //.padding(.bottom,20)
                        .foregroundColor(.orange)
                        .bold()
                    
                    
                    HStack{
                        
                        Picker("Please choose a color", selection: $selectedClock) {
                            ForEach(clocks, id: \.self) {
                                
                                Text($0)
                                    .foregroundColor(.white)
                                
                            }
                            
                        }.pickerStyle(.wheel)
                        
                        Picker("Please choose a color", selection: $selectedMinutes) {
                            ForEach(minutes, id: \.self) {
                                
                                Text($0)
                                    .foregroundColor(.white)
                                
                            }
                        }.pickerStyle(.wheel)
                        
                        Picker("Please choose a color", selection: $selectedAm_Pm) {
                            ForEach(am_pm, id: \.self) {
                                
                                Text($0)
                                    .foregroundColor(.white)
                                
                            }
                
                }.pickerStyle(.wheel)

    //                        Text("You selected: \(selectedClock)")
    //                            .foregroundColor(.white)
                           
                                
                        
                                
                    }.padding(.bottom,50)
                    
                    ZStack{
                        Color(.gray)
                            .frame(width: 350,height: 200)
                            .opacity(0.2)
                            .cornerRadius(9)
                        VStack{
                            HStack{
                                Text("Repeat")
                                    .foregroundColor(.white)
                                
                                Spacer()
                                
                                Image(systemName: "chevron.backward")
                                    .foregroundColor(.gray)
                                Text("Never")
                                    .foregroundColor(.gray)
                               
                                    
                               
                            }
                            
                            Divider()
                            
                            HStack{
                                
                                
                                    
                                Text("Label")
                                    .foregroundColor(.white)
                                
                                Spacer()
                              
                                TextField("Alarm",text: $textField)
                                    .foregroundColor(.gray)
                                    .opacity(0.4)
                             
                            }
                            
                            Divider()
                            
                            HStack{
                                
                            Text("Sound")
                                .foregroundColor(.white)
                                
                                Spacer()
                                
                                Image(systemName: "chevron.backward")
                                    .foregroundColor(.gray)
                                Text("Rader")
                                    .foregroundColor(.gray)
                                
                                 
                            }
                            
                            Divider()
                            
                            HStack{
                                Toggle(isOn: $snooze) {
                                    Text("Snooze")
                                        .foregroundColor(.white)
                                        
                                }
                              
                             
                            }
                        }.padding(.horizontal,35)
                    }.padding(.bottom,250)
                }
            }.ignoresSafeArea()
        }
}


struct EditAlarmView_Previews: PreviewProvider {
    static var previews: some View {
        EditAlarmView()
    }
}
