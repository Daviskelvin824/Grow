//
//  3symbol.swift
//  todayLogPage
//
//  Created by Davis Kelvin on 03/04/23.
//

import SwiftUI

struct _symbol: View {
    @Binding var isSelected: Bool
    @Binding var isSelected2: Bool
    @Binding var isSelected3: Bool
    var color: Color
    @State var text: String
    var body: some View {
        ZStack(){
            HStack(){
                Capsule()
                    .frame(width:50,height: 50).foregroundColor(isSelected ? color : Color("warnaBack"))
                Image(systemName: "character.cursor.ibeam").padding(.horizontal,-48).foregroundColor(.white).font(.system(size: 25))
                .onTapGesture {
                    isSelected.toggle()
                    if isSelected{
                        isSelected2 = false;
                        isSelected3 = false
                    }
                }
                
                Capsule()
                    .frame(width:50,height: 50).foregroundColor(isSelected2 ? color : Color("warnaBack"))
                Image(systemName: "scribble.variable").padding(.horizontal,-48).foregroundColor(.white).font(.system(size: 25))
                    .onTapGesture {
                        isSelected2.toggle()
                        if isSelected2{
                            isSelected = false;
                            isSelected3 = false
                        }
                    }
                
//                Capsule()
//                    .frame(width:50,height: 50).foregroundColor(isSelected3 ? color : Color("warnaBack"))
//                Image(systemName: "hand.tap.fill").padding(.horizontal,-48).foregroundColor(.white).font(.system(size: 25))
//                    .onTapGesture {
//                        isSelected3.toggle()
//                        if isSelected3{
//                            isSelected = false;
//                            isSelected2 = false
//                        }
//                    }
            }.padding(.horizontal,-170)
        }
//        ZStack{
//            HStack{
//                Image(systemName: "character.cursor.ibeam").multilineTextAlignment(.leading)
//                Image(systemName: "pencil.line").multilineTextAlignment(.leading)
//                Image(systemName: "paperclip").multilineTextAlignment(.leading)
//            }
//        }
        
        
    }
}

struct _symbol_Previews: PreviewProvider {
    static var previews: some View {
        _symbol(isSelected: .constant(false), isSelected2: .constant(false), isSelected3: .constant(false), color: Color("warnaText"), text: "Option")
    }
}
