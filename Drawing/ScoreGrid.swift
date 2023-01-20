//
//  ScoreGrid.swift
//  Drawing
//
//  Created by Renato Oliveira Fraga on 1/18/23.
//

import SwiftUI

struct ScoreGrid: Shape {
    let startAngle: Angle
    let endAngle: Angle
    let clockwise: Bool
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.maxX/3, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX/3, y: rect.maxY-30))
        path.addArc(center: CGPoint(x: rect.midX, y: rect.maxY-30), radius: rect.width/6, startAngle: startAngle , endAngle: endAngle, clockwise: clockwise)
        path.addLine(to: CGPoint(x: 2*(rect.maxX/3), y: rect.minY))
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY/3.2))
        path.addLine(to: CGPoint(x: rect.maxX, y: (rect.maxY/3.2)))
        path.move(to: CGPoint(x: rect.minX, y: (2*(rect.maxY/3)+10)))
        path.addLine(to: CGPoint(x: rect.maxX, y: (2*(rect.maxY/3)+10)))
        
        return path
    }
}
