//
//  Rating.swift
//  InteractiveRatingComponent (iOS)
//
//  Created by Jinwook Kim on 2022/03/20.
//

import SwiftUI

struct Rating: View {
    let rating: Int
    var body: some View {
        ZStack {
            Palette.buttonColor
                .frame(width: 50, height: 50)
            Text(rating, format: .number)
                .font(.custom("Overpass", size: 20))
                .font(.headline.weight(.heavy))
                .foregroundColor(Palette.textColor)
                .baselineOffset(-3)
        }
        .clipShape(Circle())
        .shadow(radius: 5)
    }
}
