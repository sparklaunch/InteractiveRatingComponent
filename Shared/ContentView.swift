//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/03/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Palette.backgroundColor
            Card()
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
