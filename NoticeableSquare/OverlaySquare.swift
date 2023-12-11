//
//  OverlaySquare.swift
//  NoticeableSquare
//
//  Created by Denis Evdokimov on 12/12/23.
//

import SwiftUI

struct OverlaySquare: View {
    @Binding var location: CGPoint
    var body: some View {
        NoticeSquare(location: $location, color: .white)
            .blendMode(.difference)
            .overlay {
                NoticeSquare(location: $location, color: .white)
                    .blendMode(.hue)
            }
            .overlay {
                NoticeSquare(location: $location, color: .white)
                    .blendMode(.overlay)
            }
            .overlay {
                NoticeSquare(location: $location, color: .black)
                    .blendMode(.overlay)
            }
    }
}

#Preview {
    OverlaySquare(location: .constant(CGPoint(x: UIScreen.main.bounds.midX, y: UIScreen.main.bounds.midY-50)))
}
