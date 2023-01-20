//
//  ShapeView.swift
//  Drawing
//
//  Created by Renato Oliveira Fraga on 1/18/23.
//

import SwiftUI

struct ShapeView: View {

    var body: some View {
        
        VStack {
            Text("Placar")
                .font(.largeTitle.bold())
            Spacer()
            ZStack {
                ScoreGrid(startAngle: .degrees(180), endAngle: .degrees(0), clockwise: true)
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
