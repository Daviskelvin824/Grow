//
//  WelcomePageView.swift
//  GrowApp
//
//  Created by Jennifer Hakirno on 12/04/23.
//

import SwiftUI
import CoreData

struct WelcomePage: View {
    
    @FetchRequest(sortDescriptors: []) var username:
    FetchedResults<UserName>
    @Environment(\.managedObjectContext) var moc
    @State private var FullName: String = ""
    @State var treePage2:Bool = false
    var body: some View {
        NavigationView {
            VStack {
                
                Spacer()
                
                Image("tree22")
                    .resizable()
                    .frame(width: 250, height: 270)
                    .scaleEffect(1.1)
                
                Text("Welcome,")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color("warnaText"))
                    .multilineTextAlignment(.center)
                    .font(Font.headline.weight(.black))
                    .font(.custom("SF Pro",fixedSize: 40))
                    .padding(.bottom, 70);
        
                
                    
                    TextField("Type your name", text: $FullName)
                        .font(.system(size: 17, weight: .bold))
                        .foregroundColor(Color("warnaText"))
//                        .padding(.horizontal, 130)
                        .italic().multilineTextAlignment(.center)
                
                
                Button {
                    
                    let user = UserName(context: moc)
                    user.name = FullName
    
                    try? moc.save()
                    
                    UserDefaults.standard.set(FullName, forKey: "USERNAME")
                    
                    treePage2.toggle()
                    
                    
                } label: {
                    Text("Next")
                        .fontWeight(.bold)
                        .foregroundColor(Color("warnaBack"))
                        .font(.custom("SF Pro", fixedSize: 24))
                        .font(Font.headline.weight(.semibold))
                        .padding(.vertical, 5)
                        .padding(.horizontal, 11)
                        .frame(
                            maxWidth: 180,
                            maxHeight: 40
                        )
                }
                .fullScreenCover(isPresented: $treePage2, content: {
                    mainView()
                })
                .buttonStyle(.bordered)
                .background(Color("warnaText"))
                .cornerRadius(30)
                .padding(.top);
               
            
                
                
                
                Text("Let's grow together with us!")
                    .font(.custom("SF Pro",fixedSize: 20))
                    .fontWeight(.black)
                    .foregroundColor(Color("warnaText")).font(Font.headline.weight(.bold))
                    .padding(.top, 50)
                    .padding(.bottom, 120)
                
                
                
            }
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity
            )
           
            .background(Color("warnaBack"))
        }
    }
}
    
    

struct WelcomePage_Previews: PreviewProvider {
    static var previews: some View {
        WelcomePage()
    }
}

