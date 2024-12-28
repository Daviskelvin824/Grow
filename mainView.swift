//
//  pageButton.swift
//  todayLogPage
//
//  Created by Davis Kelvin on 03/04/23.
//

import SwiftUI

struct mainView: View {
    
    var body: some View {
    
        TabView{
            treePage( FullName: .constant("Test") )
                .tabItem(){
                    Image(systemName: "tree.circle.fill")
                    Text("Tree")
                }
            calendarContent()
                .tabItem(){
                    Image(systemName: "calendar")
                    Text("Recap")
                }
            infoView()
                .tabItem(){
                    Image(systemName: "info.square.fill").foregroundColor(.white)
                    Text("Info")
                }
        }
//        .accentColor(.white)
        .onAppear(){
            UITabBar.appearance().backgroundColor = UIColor(named: "warnaTabBack")
        }

        
//        if todaylogView {
//            .animation(.spring())
//        }
        
    }
}

struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        mainView()
    }
}
