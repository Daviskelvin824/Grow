//
//  logPageandText.swift
//  todayLogPage
//
//  Created by Davis Kelvin on 03/04/23.
//

import SwiftUI
import CoreData

struct logPageandText: View {
    @Binding var isSelected: Bool
    @Binding var isSelected2: Bool
    @Binding var isSelected3: Bool
    @FetchRequest(sortDescriptors: []) var histories:
    FetchedResults<JournalEntity>
    
    @State private var indexPage = 0
    @State var textEditorText:String=""
    
    
    @Environment(\.managedObjectContext) var moc
    var body: some View {
        VStack{
            if(isSelected){
                editType(textEditorText: $textEditorText).transition(.slide).animation(.easeInOut)
            }
            else if(isSelected2){
                editSketch().transition(.slide).animation(.easeInOut)
            }
//            else if(isSelected3){
//                editChoose().transition(.slide).animation(.easeInOut)
//            }
//            star5();
//            Spacer()
//            Text("Rate your day!").font(.system(size: 18)).foregroundColor(Color("warnaText"))
            Button(action:{
//                let journal = JournalEntity(context: moc)
//                journal.text = textEditorText
//                journal.date = Date()
//
//                try? moc.save()
                let todayHistory = histories.first(where: { $0.date?.formatted(date: .abbreviated, time: .omitted) == Date().formatted(date: .abbreviated, time: .omitted) })
                
                
                if let today = todayHistory, let text = today.text, !text.isEmpty {
                        print("Data for today already exists.")
                    } else {
                        let journal = JournalEntity(context: moc)
                        journal.text = textEditorText
                        journal.date = Date()
                        try? moc.save()
                        print("Data saved.")
                    }
//                if let today = todayHistory {
//                        // There is already an entry for today's date, so disable the Save button
//                    print("GAGAL")
//                        return
//                    }
//
//                    let journal = JournalEntity(context: moc)
//                    journal.text = textEditorText
//                    journal.date = Date()
//
//                    try? moc.save()
                
                
                
            },label: {
                Text("Save")
                    .font(.system(size: 25)).bold()
                    .padding(.horizontal,70).padding(.vertical,8)
                    .foregroundColor(Color("warnaBack")).background(Color("warnaText")).cornerRadius(20).frame(maxWidth: .infinity)
                    
                
            })
        }
//        Text(savedText)
    }
}

struct logPageandText_Previews: PreviewProvider {
    static var previews: some View {
        logPageandText(isSelected: .constant(false), isSelected2: .constant(false), isSelected3: .constant(false))
    }
}
