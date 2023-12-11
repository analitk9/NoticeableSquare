//
//  NoticeSquare.swift
//  NoticeableSquare
//
//  Created by Denis Evdokimov on 12/11/23.
//

import SwiftUI

struct NoticeSquare: View {
    @Binding var location: CGPoint
    var color = Color.white
    
    var simpleDrag: some Gesture {
        DragGesture()
            .onChanged { value in
                self.location = value.location
            }
    }
    
    var body: some View {
        Rectangle()
            .frame(width: 100, height: 100)
            .foregroundColor(color)
            .cornerRadius(10)
            .position(location)
            .gesture(simpleDrag)
    }
}

#Preview {
    NoticeSquare(location: .constant(CGPoint(x: UIScreen.main.bounds.midX, y: UIScreen.main.bounds.midY-50)), color: .black)
}
