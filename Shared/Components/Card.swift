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
            VStack(alignment: .leading, spacing: 0) {
                StarButton()
                Text("How did we do?")
                    .font(.custom("Overpass", size: 24))
                    .font(.largeTitle.weight(.heavy))
                    .foregroundColor(.white)
                    .padding(.vertical, 20)
                Text("Please let us know how we did with your support request. All feedback is appreciated to help us improve our offering!")
                    .fixedSize(horizontal: false, vertical: true)
                    .font(.custom("Overpass", size: 16))
                    .font(.body.weight(.semibold))
                    .foregroundColor(Palette.textColor)
                    .lineSpacing(5)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                HStack {
                    ForEach(1...5, id: \.self) {
                        Rating(rating: $0)
                            .frame(maxWidth: .infinity)
                    }
                }
            }
            .padding(25)
        }
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding(.horizontal, 30)
        .scaledToFit()
        .shadow(radius: 5)
    }
}
