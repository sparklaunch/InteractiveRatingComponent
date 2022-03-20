//
//  Card.swift
//  InteractiveRatingComponent (iOS)
//
//  Created by Jinwook Kim on 2022/03/20.
//

import SwiftUI

struct Card: View {
    var body: some View {
        ZStack {
            Palette.cardColor
            VStack(alignment: .leading) {
                StarButton()
                Text("How did we do?")
                    .font(.custom("Overpass", size: 24))
                    .font(.title.weight(.heavy))
                    .foregroundColor(.white)
                Text("Please let us know how we did with your support request. All feedback is appreciated to help us improve our offering!")
                    .font(.custom("Overpass", size: 16))
                    .font(.body.weight(.semibold))
                    .foregroundColor(Palette.textColor)
            }
            .padding(30)
        }
        .padding(.horizontal, 30)
    }
}
