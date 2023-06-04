

import SwiftUI

struct ContentView: View {
 
    @ObservedObject var vm = AlarmViewModel()
    @State private var showingSheet = false
    @State private var showingSheetEdit = false
    @State  var on_off = true
//   @State var allAlarms: [Alarm] = [Alarm( name: "Alarm", time: "6:09AM", isOn: false), Alarm( name: "Alarm", time: "7:00AM", isOn: true)]
    var body: some View {
        ZStack {
            Color(.black)
           VStack{
               
               
                   
                   Image(systemName: "plus")
                       .resizable()
                       .frame(width: 17,height: 17)
                       .foregroundColor(.orange)
                       .padding(.leading,300)
                       .padding(.top,30)
                       .onTapGesture {
                           showingSheet.toggle()
    
                       }
                       .sheet(isPresented: $showingSheet) {
                           AddAlarmView()
                       }
                 
               
               Text("Edit")
                   .foregroundColor(.orange)
                   .padding(.trailing,300)
                   .ignoresSafeArea()
                   //.padding(.top)
                  // .padding(.top,1)
                Text("Alarm")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .bold()
                    .padding(.trailing,240)
                    .padding(.bottom)
                    .padding(.top)
               HStack{
                   Image(systemName: "bed.double.fill")
                       .foregroundColor(.white)
                   Text("Sleep | Wake Up")
                       .bold()
                       .foregroundColor(.white)
                       .font(.title2)
                       .bold()
                       .padding(.trailing,150)
               }
               
               Divider()
                   .overlay(Color.gray)
               
               HStack{
                   Text("\(vm.allAlarms.count)")
                       .foregroundColor(.white)
                  Spacer()
                   ZStack{
                       Rectangle()
                           .frame(width: 80,height: 40)
                           .foregroundColor(.gray)
                       .cornerRadius(23)
                       .opacity(0.4)
                       
                       Text("SET UP")
                           .foregroundColor(.orange)
                           .bold()
                         //  .font(.callout)
                   }
                 
                    
                     
               }.padding(.all,7)
               
               Divider()
                   .overlay(Color.gray)
               
               Text("Other")
                   .foregroundColor(.white)
                   .font(.title2)
                   .bold()
                   .padding(.trailing,300)
                   .padding(.top,20)
               Divider()
                   .overlay(Color.gray)
               
             List{
                 
                 ForEach(vm.allAlarms){alarm  in
                            VStack{
                              //  if alarm.isOn.count == 1 {
                                //   Text("yeeees")
                                   // count = 1 + count
                              //  }
                             
                                HStack{
                                    
                                    VStack{
                                        Text(alarm.time)
                                            .font(.largeTitle)
                                        
                                        Text(alarm.name)
                                            .padding(.trailing,80)
                                        
                                    
                                    }.foregroundColor(.gray)
                                    
                                    Spacer()
                                    
                                    Toggle("", isOn: $on_off)
                                        .onTapGesture {
                                           vm.upDateIsOn(alarmName: alarm.name, alarmTime: alarm.time,isOn: alarm.isOn, id: alarm.id )


                                        }.padding(.trailing)
                                    
                                }.onTapGesture {
                                    showingSheetEdit.toggle()
             
                                }
                                .sheet(isPresented: $showingSheetEdit) {
                                    EditAlarmView()
                                }
                    
                                Divider()
                                    .overlay(Color.gray)
                            }
                      
                            
                            
                        }.onDelete(perform: vm.deleteAlarm)
                        .listRowBackground(Color.black)
                 //  Divider()
                    //   .overlay(Color.gray)
                    //}
             }.scrollContentBackground(.hidden)
                   .listStyle(PlainListStyle())
                
                   
           }.padding(.top)
               // .padding(.horizontal)
        }.ignoresSafeArea()
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
