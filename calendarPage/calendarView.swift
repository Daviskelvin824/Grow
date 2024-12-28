//
//  calendarView.swift
//  GrowApp
//
//  Created by Davis Kelvin on 03/04/23.
//

import SwiftUI

struct calendarView: View {
    @Binding var date: Date
//    @State private var bmiHistories = [1, 2, 3, 3, 3]
    
    var body: some View {
        VStack(spacing: 60) {
            DatePicker(
                    "Start Date",
                    selection: $date,
                    displayedComponents: [.date]
            )
            
            
            .datePickerStyle(.graphical)
            .padding(.horizontal)
            
            
            // -----------------------------
            
        }
    }
}

struct calendarView_Previews: PreviewProvider {
    static var previews: some View {
        calendarView(date: .constant(Date()))
    }
}
