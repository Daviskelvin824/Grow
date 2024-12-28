//
//  star5.swift
//  todayLogPage
//
//  Created by Davis Kelvin on 03/04/23.
//

import SwiftUI

struct star5: View {
    @State var rating : Int=0
    
    var body:some View{
        ZStack{
            starbody
                .overlay(
                    overlayStar
                        .mask(starbody))
        }
    }
    
    private var overlayStar: some View{
        GeometryReader{geometry in ZStack(alignment: .leading){
                    Rectangle().foregroundColor(.yellow).frame(width: CGFloat(rating)/5*geometry.size.width)
                    }
                        
                }
        .allowsHitTesting(false)
    }
    
    private var starbody: some View {
        ZStack{
            HStack{
                ForEach(1..<6){index in
                    Image(systemName: "star.fill").font(.title)
                        .foregroundColor( Color.gray)
                        .onTapGesture {
                            withAnimation(.easeInOut){
                                rating=index
                            }
                            
                        }
                }
            }
        }
    }
}

struct star5_Previews: PreviewProvider {
    static var previews: some View {
        star5()
    }
}
