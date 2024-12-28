//
//  treePage.swift
//  GrowApp
//
//  Created by Davis Kelvin on 06/04/23.
//

import SwiftUI

struct treePage: View {
    @FetchRequest(sortDescriptors: []) var histories:
    FetchedResults<JournalEntity>
    
    @FetchRequest(sortDescriptors: []) var username:
        FetchedResults<UserName>
    @State var showSheet : Bool = false
    @Binding var FullName: String
    var body: some View {
        Color("warnaBack")
            .ignoresSafeArea()
            .overlay(){
                
                VStack{
                    HStack{
                        VStack(alignment: .leading){
                            Text("Hello, \(username.first?.name ?? "User")").font(.system(size: 25)).bold()
                            Text("How are you today?").font(.system(size: 16)).italic()
                        }.frame(maxWidth: .infinity,alignment: .leading).padding()
                        Button{
                            
                        }label: {
                            Image("profile")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 45,height: 45)
                        }
                        
                    }.padding().position(x:200,y:40)
                    
                }
               
                VStack(spacing: 20){
                    Image("day \(histories.count % 30)").resizable().frame(width: 183,height: 320)
                    Text("Day \(histories.count%31+1)").font(.system(size: 22)).bold()
                    Text("Let's grow the flower").font(.system(size: 18)).foregroundColor(Color("warnaLog")).bold().italic()
                    
                    
                    Button(action:{
                        showSheet.toggle()
                    },label: {
                        Text("Express Your Feeling!")
                            .font(.system(size: 17)).bold()
                            .padding(.horizontal,15).padding(.vertical,15)
                            .foregroundColor(Color("warnaBack")).background(Color("warnaText")).cornerRadius(21).frame(maxWidth: .infinity)
                            
                        
                    })
                    .fullScreenCover(isPresented: $showSheet, content: {
                        todaylogView()
                    })
                }
                
                
            }
        
    }
}



struct treePage_Previews: PreviewProvider {
    static var previews: some View {
        treePage(FullName: .constant("Test"))
    }
}
