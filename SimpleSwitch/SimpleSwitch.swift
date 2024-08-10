//
//  SimpleSwitch.swift
//  SimpleSwitch
//
//  Created by Zafran on 10/08/2024.
//
import SwiftUI

struct SimpleSwitch: View {
    @Binding var isOn: Bool

    var body: some View {
        ZStack {
            Color.clear
            Toggle(isOn: $isOn) {
                
            }
            .toggleStyle(CustomToggleStyle())
            
            Text(isOn ? "YES" : "NO")
                .font(.system(size: 12, weight: .bold))
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.leading, isOn ? -20 : 20)
        }
    }
}

struct CustomToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label
            
            Rectangle()
                .foregroundColor(configuration.isOn ? .green : .gray)
                .frame(width: 55, height: 27.5)
                .overlay(
                    Circle()
                        .foregroundColor(.white)
                        .padding(3)
                        .offset(x: configuration.isOn ? 15 : -15)
                        .animation(Animation.linear(duration: 0.1))
                )
                .cornerRadius(15)
                .onTapGesture {
                    configuration.isOn.toggle()
                }
        }
        .padding()
    }
}


#Preview {
    SimpleSwitch(isOn: .constant(false))
        .frame(width: 55, height: 30)
}


