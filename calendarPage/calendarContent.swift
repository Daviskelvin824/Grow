//
//  calendarContent.swift
//  GrowApp
//
//  Created by Davis Kelvin on 03/04/23.
//

import SwiftUI
import CoreData

struct calendarContent: View {
    @FetchRequest(sortDescriptors: []) var histories:
    FetchedResults<JournalEntity>
    
    
    @State private var username: String=""
    @State var textEditorText: String=""
    
    @State var selectedJournal: JournalEntity? = JournalEntity()
    @State var selectedDate = Date()
    var body: some View {
        Color("warnaBack")
            .ignoresSafeArea()
            .overlay(){
                VStack {
                    Text("Calendar").font(.system(size: 36)).fontWeight(.heavy).multilineTextAlignment(.center).bold().foregroundColor(Color("warnaText"))
                    
                    Text("Let's see your monthly recap").font(.system(size: 18)).bold().italic().foregroundColor(Color("warnaText"))
                    Spacer()
                    calendarView(
                        date: $selectedDate
                    )
               
                   
                    ScrollView{
                        TextEditor(text: $textEditorText).frame(width: 350,height: 320).colorMultiply(Color("warnaLog")).cornerRadius(20).foregroundColor(Color("warnaText")).disabled(true).padding()
                    }.foregroundColor(Color("warnaBack"))
                    .onAppear{
                        updateView()
                    }
                    .onChange(of: selectedDate) {newSelectedDate in
                        updateView()
                    }
//                    ScrollView{
//                        TextEditor(text: $textEditorText).frame(width: 350,height: 320).colorMultiply(Color("warnaLog")).cornerRadius(20).foregroundColor(Color("warnaText")).disabled(true).padding()
//                    }
                    

                }
                .padding()
              
            }
    }
    
    func updateView(){
        selectedJournal = histories.filter({journal in
            journal.date?.formatted(date: .abbreviated, time: .omitted) == selectedDate.formatted(date: .abbreviated, time: .omitted)
        }).first
        if let selectedJournal = selectedJournal{
            guard let description = selectedJournal.text else{ return }
            textEditorText = description
        }else{
            textEditorText = "You haven't write anything yet..."
        }
    }
    
}

struct calendarContent_Previews: PreviewProvider {
    static var previews: some View {
        calendarContent()
    }
}
