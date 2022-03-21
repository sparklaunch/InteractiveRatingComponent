//
//  Rating.swift
//  InteractiveRatingComponent (iOS)
//
//  Created by Jinwook Kim on 2022/03/20.
//

import SwiftUI

struct Rating: View {
    var isSelected: Bool = false
    let selected: (Int) -> Void
    let rating: Int
    var body: some View {
        Button {
            selected(rating)
        } label: {
            ZStack {
                (isSelected ? Palette.textColor : Palette.buttonColor)
                    .frame(width: 50, height: 50)
                Text(rating, format: .number)
                    .font(.custom("Overpass", size: 20, relativeTo: .caption))
                    .fontWeight(.bold)
                    .foregroundColor(isSelected ? .white : Palette.textColor)
                    .baselineOffset(-3)
            }
            .clipShape(Circle())
            .shadow(radius: 5)
        }
    }
}
