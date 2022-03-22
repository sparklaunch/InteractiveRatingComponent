//
//  ResultView.swift
//  InteractiveRatingComponent (iOS)
//
//  Created by Jinwook Kim on 2022/03/22.
//

import SwiftUI

struct ResultView: View {
    let finalRating: Int
    var body: some View {
        ZStack {
            Palette.backgroundColor
                .ignoresSafeArea()
            ZStack {
                Palette.cardColor
                VStack {
                    Image("ThankYou")
                        .resizable()
                        .frame(width: 162, height: 108)
                    Spacer()
                        .frame(height: 30)
                    Text("You selected \(finalRating) out of 5")
                        .font(.custom("Overpass", size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(Palette.submitColor)
                        .baselineOffset(-3)
                        .padding(EdgeInsets(top: 8, leading: 15, bottom: 8, trailing: 15))
                        .background(Palette.subcardColor)
                        .clipShape(Capsule())
                    Spacer()
                        .frame(height: 40)
                    Text("Thank You!")
                        .font(.custom("Overpass", size: 36))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Spacer()
                        .frame(height: 20)
                    Text("We appreciate you taking the time to give a rating. If you ever need more support, don't hesitate to get in touch!")
                        .font(.custom("Overpass", size: 20))
                        .fontWeight(.semibold)
                        .foregroundColor(Palette.textColor)
                        .lineSpacing(3)
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.center)
                }
                .padding(30)
            }
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding(.horizontal, 30)
            .scaledToFit()
            .shadow(radius: 5)
        }
    }
}
