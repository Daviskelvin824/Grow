//
//  CalendarTextPage.swift
//  GrowApp
//
//  Created by Davis Kelvin on 10/04/23.
//

import SwiftUI
import CoreData

struct CalendarTextPage: View {
    
    @Binding var savedText: String
    var journal: JournalEntity
    var body: some View {
        Text("You didn't write anything yet.").font(.system(size: 18)).italic()
    }
}

struct CalendarTextPage_Previews: PreviewProvider {
    static var previews: some View {
        CalendarTextPage(savedText: .constant("Test"), journal: JournalEntity())
    }
}
