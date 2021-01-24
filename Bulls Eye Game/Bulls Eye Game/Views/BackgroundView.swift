//
//  BackgroundView.swift
//  Bulls Eye Game
//
//  Created by Itunu Raimi on 24/01/2021.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var game: Game
    var body: some View {
        VStack {
            TopView(game: $game)
                .padding()
            Spacer()
            BottomView(game: $game)
                .padding()
        }
        .background(Color("BackgroundColor"))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct TopView: View {
    @Binding var game: Game
    
    var body: some View {
        HStack {
            RoundedImageViewStroked(systemName: "arrow.counterclockwise", strokeColor: "ButtonStrokeColor")
            Spacer()
            RoundedImageViewFilled(systemName: "list.dash", backgroundColor: "ButtonFilledBackgroundColor", foregroundColor: "ButtonFilledTextColor")
        }
    }
}

struct NumberView: View {
    var title: String
    var text: String
    var body: some View {
        VStack(spacing: 5) {
            LabelText(text: title.uppercased())
            RoundRectTextView(text: text, strokeColor: "ButtonStrokeColor")
        }
        
    }
}

struct BottomView: View {
    @Binding var game: Game
    var body: some View {
        HStack {
            NumberView(title: "Score", text: String(game.score))
            Spacer()
            NumberView(title: "Round", text: String(game.rounds))
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(game: .constant(Game()))
    }
}
