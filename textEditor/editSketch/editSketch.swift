//
//  editSketch.swift
//  GrowApp
//
//  Created by Davis Kelvin on 05/04/23.
//

import SwiftUI

struct Line{
    var points = [CGPoint]()
    var color: Color = .red
    var lineWidth: Double = 1.0
}

struct editSketch: View {
    
    @State private var currentLine = Line()
    @State private var lines: [Line] = []
    @State private var selectedColor: Color = .red
    @State private var thickness: Double = 0.0
    var body: some View {
        VStack{
            Canvas{ context, size in
                
                for line in lines{
                    var path = Path()
                    path.addLines(line.points)
                    context.stroke(path, with: .color(line.color), lineWidth: line.lineWidth)
                }
                
            }.background(Color.white).cornerRadius(8.0)
            .frame(height: 440)
            .gesture(DragGesture(minimumDistance: 0, coordinateSpace: .local).onChanged({ value in
                let newPoint = value.location
                currentLine.points.append(newPoint)
                self.lines.append(currentLine)
                
            })
            .onEnded({value in
//                self.lines.append(currentLine)
                self.currentLine = Line(points: [],color: selectedColor,lineWidth: thickness)
            })
            )
            HStack{
                Slider(value: $thickness, in: 1...20){
                    Text("Thickness")
                }.frame(maxWidth: 200)
                    .onChange(of: thickness){newThickness in
                        currentLine.lineWidth = newThickness
                    }
                Divider()
                
                colorPicker(selectedColor: $selectedColor)
                    .onChange(of: selectedColor){ newColor in
                        currentLine.color = newColor
                    }
            }
        }.padding()
    }
}

struct editSketch_Previews: PreviewProvider {
    static var previews: some View {
        editSketch()
    }
}
