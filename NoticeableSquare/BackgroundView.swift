//
//  BackgroundView.swift
//  NoticeableSquare
//
//  Created by Denis Evdokimov on 12/12/23.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        VStack(spacing: 0) {
            Rectangle()
                .foregroundColor(.white)
            Rectangle()
                .foregroundColor(.pink)
            Rectangle()
                .foregroundColor(.yellow)
            Rectangle()
                .foregroundColor(.black)
        }
    }
}

#Preview {
    BackgroundView()
}
