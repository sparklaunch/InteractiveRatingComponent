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
                    .font(.custom("Overpass", size: 24, relativeTo: .largeTitle))
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding(.vertical, 20)
                Text("Please let us know how we did with your support request. All feedback is appreciated to help us improve our offering!")
                    .fontWeight(.regular)
                    .fixedSize(horizontal: false, vertical: true)
                    .font(.custom("Overpass", size: 16, relativeTo: .body))
                    .foregroundColor(Palette.textColor)
                    .lineSpacing(5)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                HStack {
                    ForEach(1...5, id: \.self) {
                        Rating(rating: $0)
                            .frame(maxWidth: .infinity)
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                Button {

                } label: {
                    ZStack {
                        Palette.submitColor
                            .frame(height: 50)
                        Text("SUBMIT")
                            .font(.custom("Overpass", size: 20, relativeTo: .title))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .tracking(2)
                    }
                    .clipShape(Capsule())
                    .shadow(radius: 5)
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
