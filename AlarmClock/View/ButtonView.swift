//
//  ButtonView.swift
//  CombineClock08
//
//  Created by Ryo on 2022/07/12.
//

import SwiftUI

struct ButtonView: View {
    @ObservedObject private var vm: StopwatchViewModel
    
    init(viewModel: StopwatchViewModel) {
        self.vm = viewModel
    }
    
    var body: some View {
        HStack{
            
            Button {
                if(vm.isStart){
                    //Lap
                }else{
                   
                    vm.resetCount()
                }
            } label: {
                Text(vm.isStart ? "Lap" : "Reset")
                    .foregroundColor(Color.white)
                    .frame(width: 80.0, height: 80.0)
                    .background(Color.gray)
                    .opacity(0.4)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .bold()
                
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
            Button {
                if(vm.isStart){
                    vm.stopCounting()
                    vm.isStart = false
                }else{
                    vm.startCounting()
                    vm.isStart = true
                }
            } label: {
                Text(vm.isStart ? "Stop" : "Start" )
                    .foregroundColor(vm.isStart ? Color.red : Color.green )
                    .frame(width: 80.0, height: 80.0)
                    .bold()
                    .background(vm.isStart ? Color.red : Color.green )
                    .opacity(0.4)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(viewModel: StopwatchViewModel())
    }
}

