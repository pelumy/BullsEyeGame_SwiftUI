//
//  ContentView.swift
//  Bulls Eye Game
//
//  Created by mac on 15/01/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisible = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    
    var body: some View {
        ZStack {
            BackgroundView(game: $game)
            VStack {
                InstructionsView(game: $game)
                SliderView(sliderValue: $sliderValue)
                HitMeButtonView(alertIsVisible: $alertIsVisible, sliderValue: $sliderValue, game: $game)
            }
        }
        
    }
}

struct InstructionsView: View {
    @Binding var game: Game
    var body: some View {
        VStack {
            InstructionText(text: "🎯🎯🎯 \nPUT THE BULL'S EYE AS CLOSE AS YOU CAN TO")
                .padding(.leading, 30.0)
                .padding(.trailing, 30.0)
            BigNumberText(text: String(game.target))
        }
    }
}

struct SliderView: View {
    @Binding var sliderValue: Double
    var body: some View {
        HStack {
            SliderLabelText(text: "1")
            Slider(value: $sliderValue, in: 1.0...100.0 )
            SliderLabelText(text: "100")
        }
        .padding()
    }
}

struct HitMeButtonView: View {
    @Binding var alertIsVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    
    var body: some View {
        Button(action: {
            self.alertIsVisible = true
        }) {
            ButtonText(text: "Hit Me")
        }
        .padding(20)
        .background(ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
            Color("ButtonColor")
        })
        .foregroundColor(Color.white)
        .cornerRadius(21)
        .overlay(
            RoundedRectangle(cornerRadius: 21)
                .strokeBorder(Color.white, lineWidth: 2)

        )
        .alert(isPresented: $alertIsVisible, content: {
            return Alert(title: Text("Alert"), message: Text("The slider's value is \(Int(sliderValue.rounded())))\n" + "You scored \(game.points(sliderValue: Int(sliderValue.rounded()))) points in this round" ), dismissButton: .default(Text("OK")))
        })

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
        ContentView().previewLayout(.fixed(width: 568, height: 320))
    }
}
