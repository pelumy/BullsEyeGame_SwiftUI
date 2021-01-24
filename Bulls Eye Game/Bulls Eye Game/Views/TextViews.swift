//
//  TextViews.swift
//  Bulls Eye Game
//
//  Created by mac on 24/01/2021.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
            .foregroundColor(Color("TextColor"))
        
    }
}

struct BigNumberText: View {
    var text: String
    var body: some View {
        Text(String(text))
            .kerning(-1.0)
            .font(.largeTitle)
            .fontWeight(.black)
    }
}

struct SliderLabelText: View {
    var text: String
    var body: some View {
        Text(text)
            .bold()
            .frame(width: 35 )
            .foregroundColor(Color("TextColor"))
    }
}

struct ButtonText: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .bold()
            .font(.title3)
            .foregroundColor(Color.white)
    }
}

struct LabelText: View {
    var text: String
    var body: some View {
        Text(text)
            .kerning(1.5)
            .font(.caption)
            .bold()
            .foregroundColor(Color("TextColor"))
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText(text: "🎯🎯🎯 \nPUT THE BULL'S EYE AS CLOSE AS YOU CAN TO")
            BigNumberText(text: "45")
            SliderLabelText(text: "1")
        }
        
    }
}
