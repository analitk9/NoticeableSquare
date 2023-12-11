//
//  ContentView.swift
//  NoticeableSquare
//
//  Created by Denis Evdokimov on 12/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var location: CGPoint = CGPoint(x: UIScreen.main.bounds.midX, y: UIScreen.main.bounds.midY-50)
    
    var body: some View {
        ZStack{
            BackgroundView()
                .ignoresSafeArea()
            OverlaySquare(location: $location)
        }
    }
}

#Preview {
    ContentView()
}
