//
//  RoundViews.swift
//  Bulls Eye Game
//
//  Created by mac on 24/01/2021.
//

import SwiftUI

struct RoundedImageViewStroked: View {
    var systemName: String
    var strokeColor: String
    var body: some View {
        Image(systemName: systemName)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color("TextColor"))
            .frame(width: 56, height: 56, alignment: .center)
            .overlay(
                Circle()
                    .strokeBorder(Color(strokeColor), lineWidth: 2)
            )
    }
}

struct RoundedImageViewFilled: View {
    var systemName: String
    var backgroundColor: String
    var foregroundColor: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color(foregroundColor))
            .frame(width: 56, height: 56, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(
                Circle()
                    .fill(Color(backgroundColor))
            )
    }
}

struct RoundRectTextView: View {
    var text: String
    var strokeColor: String
    
    var body: some View {
        Text(text)
            .kerning(-0.2)
            .padding()
            .font(.title3)
            .foregroundColor(Color("TextColor"))
            .background(
                RoundedRectangle(cornerRadius: 21)
                    .strokeBorder(Color(strokeColor),  lineWidth: 2)
                    .frame(width: 68, height: 56)
            )
    }
}

struct RoundViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 10) {
//            RoundedImageViewStroked(systemName: "arrow.counterclockwise", strokeColor: "ButtonStrokeColor")
//            RoundedImageViewFilled(systemName: "list.dash", backgroundColor: "ButtonFilledBackgroundColor", foregroundColor: "ButtonFilledTextColor")
            
            RoundRectTextView(text: "0", strokeColor: "ButtonStrokeColor")
        }
        .preferredColorScheme(.light)
    }
}
