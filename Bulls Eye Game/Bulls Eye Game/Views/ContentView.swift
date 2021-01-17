//
//  ContentView.swift
//  Bulls Eye Game
//
//  Created by mac on 15/01/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisible = false
    @State private var sliderValue: Double = 50.0
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯 \nPUT THE BULL'S EYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text("89")
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1")
                    .bold()
                Slider(value: $sliderValue, in: 1.0...100.0 )
                Text("100")
                    .bold()
            }
            Button(action: {
                self.alertIsVisible = true
            }) {
                Text("Hit me")
            }.alert(isPresented: $alertIsVisible, content: {
                return Alert(title: Text("Alert"), message: Text("The slider's value is \(Int(sliderValue.rounded()))"), dismissButton: .default(Text("OK")))
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().previewLayout(.fixed(width: 568, height: 320))
    }
}