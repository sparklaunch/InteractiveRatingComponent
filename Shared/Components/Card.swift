//
//  Card.swift
//  InteractiveRatingComponent (iOS)
//
//  Created by Jinwook Kim on 2022/03/20.
//

import SwiftUI

struct Card: View {
    @State private var selectedRating: Int = 0
    @State private var showingAlert: Bool = false
    @State private var showingModal: Bool = false
    private func ratingSelected(_ number: Int) -> Void {
        selectedRating = number
    }
    var body: some View {
        NavigationView {
            ZStack {
                Palette.backgroundColor
                    .ignoresSafeArea()
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
                                Rating(isSelected: selectedRating == $0, selected: ratingSelected, rating: $0)
                                    .frame(maxWidth: .infinity)
                            }
                        }
                        Spacer()
                            .frame(height: 5)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                        Button {
                            if selectedRating == 0 {
                                showingAlert = true
                            }
                            else {
                                showingModal = true
                            }
                        } label: {
                            ZStack {
                                Palette.submitColor
                                    .frame(height: 50)
                                Text("SUBMIT")
                                    .font(.custom("Overpass", size: 20, relativeTo: .title))
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .tracking(2)
                                    .baselineOffset(-3)
                            }
                            .clipShape(Capsule())
                            .shadow(radius: 5)
                        }
                        .sheet(isPresented: $showingModal) {
                            ResultView(finalRating: selectedRating)
                        }
                    }
                    .padding(25)
                }
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding(.horizontal, 30)
                .scaledToFit()
                .shadow(radius: 5)
                .alert("Please select a rating", isPresented: $showingAlert) {
                    Button("OK") {}
                }
            }
        }
        .navigationTitle("Interactive Rating Component")
    }
}
