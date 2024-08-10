//
//  ContentView.swift
//  SimpleSwitch
//
//  Created by Zafran on 10/08/2024.
//

import SwiftUI

struct ContentView: View {
    @State var simpleswitch: Bool = true
    var body: some View {
        
        
        Text("Simple Switch With customization")
        
        SimpleSwitch(isOn: $simpleswitch)
            .frame(width: 70, height: 40)
        Spacer()
    }
}

#Preview {
    ContentView()
}
