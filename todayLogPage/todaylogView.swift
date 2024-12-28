//
//  ContentView.swift
//  todayLogPage
//
//  Created by Davis Kelvin on 03/04/23.
//

import SwiftUI

struct todaylogView: View {
    @State private var isSelected = true
    @State private var isSelected2 = false
    @State private var isSelected3 = false
    
    @State var textEditorText:String = ""
    @State var rating: Int = 3
    @State var savedText: String = ""
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Color("warnaBack")
            .ignoresSafeArea()
            .overlay(){
                VStack {
                    HStack{
                        
                            Button(action: {
                                presentationMode.wrappedValue.dismiss()
                            },label: {
                                Image(systemName: "arrowshape.turn.up.backward.fill").foregroundColor(.white).font(.largeTitle).padding(20)
                            }).position(x:40,y:40)
                        VStack(alignment: .center){
                            Text("Journal").font(.system(size: 36)).foregroundColor(Color("warnaText")).fontWeight(.heavy).multilineTextAlignment(.center)
                            //                    Spacer()
                            Text("let us hear your story,today.").foregroundColor(Color("warnaText")).bold().italic().font(.system(size: 18)).frame(width: 1000)
//                                                Spacer(minLength: 10)
                        }.position(x:0,y:40)
                        
                    }
                    
                        HStack{
                            _symbol(isSelected: $isSelected, isSelected2: $isSelected2, isSelected3: $isSelected3, color: Color("warnaText"), text: "Type")
                        }.position(x:190,y:30)
//                        Spacer()
                        logPageandText(isSelected: $isSelected, isSelected2: $isSelected2, isSelected3: $isSelected3).padding()
//                        Spacer(minLength: 10)
                    
                    }
                  
                    
                }
            }
    }
    
    struct todaylogView_Preview: PreviewProvider {
        static var previews: some View {
            todaylogView()
        }
    }
