//
//  ShapeView.swift
//  Drawing
//
//  Created by Renato Oliveira Fraga on 1/18/23.
//

import SwiftUI

struct ShapeView: View {
    
    struct Arc: Shape {
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
    var body: some View {
        
        VStack {
            Text("Placar")
                .font(.largeTitle.bold())
            Spacer()
            ZStack {
                Arc(startAngle: .degrees(180), endAngle: .degrees(0), clockwise: true)
                    .stroke(.primary, lineWidth: 10)
                    
                
                VStack(spacing: 70) {
                    HStack(spacing: 80) {
                        Button(action: {
                            
                        }, label: {
                            Text("05")
                                .font(.largeTitle)
                        })
                        Button(action: {
                            
                        }, label: {
                            Text("10")
                                .font(.largeTitle)
                        })
                        Button(action: {
                            
                        }, label: {
                            Text("20")
                                .font(.largeTitle)
                        })
                    }
                    
                    HStack(spacing: 80) {
                        Button(action: {
                            
                        }, label: {
                            Text("10")
                                .font(.largeTitle)
                        })
                        Button(action: {
                            
                        }, label: {
                            Text("20")
                                .font(.largeTitle)
                        })
                        Button(action: {
                            
                        }, label: {
                            Text("25")
                                .font(.largeTitle)
                        })
                    }
                    
                    
                    HStack(spacing: 80) {
                        Button(action: {
                            
                        }, label: {
                            Text("15")
                                .font(.largeTitle)
                        })
                        Button(action: {
                            
                        }, label: {
                            Text("30")
                                .font(.largeTitle)
                        })
                        Button(action: {
                            
                        }, label: {
                            Text("30")
                                .font(.largeTitle)
                        })
                    }
                    
                    
                }
                .foregroundColor(.primary)
            }
            .frame(maxWidth: .infinity, maxHeight: 300)
            .padding()
            
            Button(action: {
                
            }, label: {
                Text("40")
                    .font(.largeTitle)
                    .foregroundColor(.primary)
            })
            .padding(.vertical,30)
        }
       
    }
}

struct ShapeView_Previews: PreviewProvider {
    static var previews: some View {
        ShapeView()
    }
}
