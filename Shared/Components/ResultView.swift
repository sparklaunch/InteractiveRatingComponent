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
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding(.horizontal, 30)
            .scaledToFit()
            .shadow(radius: 5)
        }
    }
}
