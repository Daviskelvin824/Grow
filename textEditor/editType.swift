//
//  starandsave.swift
//  GrowApp
//
//  Created by Davis Kelvin on 04/04/23.
//

import SwiftUI

struct editType: View {
    @Binding var textEditorText:String
    @FocusState var isInputActive: Bool
    var body: some View {
        VStack{
//            Spacer(minLength: 100)
            TabView{
                Text("What makes you happy today?").font(.system(size: 18)).bold().italic().foregroundColor(Color("warnaText"))
                Text("What makes you angry today?").font(.system(size: 18)).bold().italic().foregroundColor(Color("warnaText"))
                Text("What's the saddest moment today?").font(.system(size: 18)).bold().italic().foregroundColor(Color("warnaText"))
                Text("Where are you too comfortable?").font(.system(size: 18)).bold().italic().foregroundColor(Color("warnaText"))
                Text("Who are you glad you met today?").font(.system(size: 18)).bold().italic().foregroundColor(Color("warnaText"))
            }.tabViewStyle(PageTabViewStyle()).frame(height: 70).padding().background(Color("warnaLog")).cornerRadius(8.0)
//            Spacer(minLength: -150)
          
            TextEditor(text: $textEditorText).frame(width: 380,height: 350).colorMultiply(Color("warnaLog")).cornerRadius(8.0).disableAutocorrection(true).lineSpacing(5).multilineTextAlignment(.leading).foregroundColor(Color("warnaText")).focused($isInputActive)
//                .toolbar{
//                    ToolbarItemGroup(placement: .keyboard){
//                        Spacer()
//
//                        Button("Done"){
//                            isInputActive = false;
//                        }
//                    }
//                }
            Button{
                isInputActive = false
            }label: {
                Text("Dissmiss keyboard")
            }
            
          
//            star5()
            //        Spacer(minLength: 5)
//            Text(textEditorText)
        }
//        Spacer(minLength: 300)
        
    }
    
}

struct editType_Previews: PreviewProvider {
    static var previews: some View {
        editType(textEditorText: .constant(""))
    }
}
