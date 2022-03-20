//
//  StarButton.swift
//  InteractiveRatingComponent (iOS)
//
//  Created by Jinwook Kim on 2022/03/20.
//

import SwiftUI

struct StarButton: View {
    var body: some View {
        ZStack {
            Palette.buttonColor
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            Image("Star")
                .resizable()
                .frame(width: 16, height: 16)
        }
        .shadow(radius: 5)
    }
}
