//
//  PickerView.swift
//  LiquidEffectTutorial
//
//  Created by enigma 1 on 7/8/23.
//

import SwiftUI

struct PickerView: View {
    
    @State var pickerIndex = 0
    
    @State var isOnThreads = true
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                Spacer()
                
                Text("Threads")
                    .opacity(isOnThreads ? 1.0 : 0.5)
                    .onTapGesture {
                        isOnThreads = true
                    }
                
                Spacer()
                Spacer()
                
                Text("Replies")
                    .opacity(isOnThreads ? 0.5 : 1.0)
                    .onTapGesture {
                        isOnThreads = false
                    }
                
                Spacer()
                
            }
            
            
            
            ZStack {
                
                Rectangle()
                    .frame(height: 1)
                    .opacity(0.2)
                
                HStack {
                    
                    if !isOnThreads {
                        Spacer()
                    }
                    
                    Rectangle()
                        .frame(width:UIScreen.main.bounds.width / 2, height: 2)
                        .opacity(1.0)
                    
                    if isOnThreads {
                        Spacer()
                    }
                }
                
            }
            
        }.animation(.spring())
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
