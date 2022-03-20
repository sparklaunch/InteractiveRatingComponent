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
            VStack {
                StarButton()
            }
        }
        .padding(.horizontal, 30)
    }
}
