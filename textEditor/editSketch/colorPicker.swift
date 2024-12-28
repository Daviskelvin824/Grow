//
//  colorPicker.swift
//  GrowApp
//
//  Created by Davis Kelvin on 05/04/23.
//

import SwiftUI

struct colorPicker: View {
    let colors = [Color.red, Color.orange,Color.green,Color.blue,Color.purple]
    @Binding var selectedColor: Color
    
    var body: some View {
        HStack{
            ForEach(colors, id: \.self) {color in
                Image(systemName: selectedColor == color ?
                      Constant.Icons.recordCircleFill : Constant.Icons.circleFill)
                .foregroundColor(color)
                .font(.system(size: 16))
                .clipShape(Circle())
                .onTapGesture {
                    selectedColor = color
                }
            }
        }
    }
}

struct colorPicker_Previews: PreviewProvider {
    static var previews: some View {
        colorPicker(selectedColor: .constant(.blue))
    }
}
