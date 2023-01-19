//
//  ContentView.swift
//  Drawing
//
//  Created by Renato Oliveira Fraga on 1/18/23.
//

import SwiftUI

struct PathWiew: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 200, y: 200))
            path.addLine(to: CGPoint(x: 100, y: 400))
            path.addLine(to: CGPoint(x: 300, y: 400))
            path.addLine(to: CGPoint(x: 200, y: 200))
            path.closeSubpath()
        }
        .stroke(.blue, lineWidth: 10)
    }
}

struct PathView_Previews: PreviewProvider {
    static var previews: some View {
        PathWiew()
    }
}
