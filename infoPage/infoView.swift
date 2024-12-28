//
//  infoView.swift
//  GrowApp
//
//  Created by Davis Kelvin on 03/04/23.
//

import SwiftUI

struct infoView: View {
    var body: some View {
        Color("warnaBack")
            .ignoresSafeArea()
            .overlay(){
                ZStack{
                    VStack{
                        
                        Text("Information").font(.system(size: 36)).foregroundColor(Color("warnaText")).fontWeight(.heavy).multilineTextAlignment(.center)
                        Text("Let's see our latest info!").font(.system(size: 18)).bold().italic().foregroundColor(Color("warnaText"))
                        
                        Spacer()
                        
                        TabView{
                            VStack{
                                Text("Counseling Schedule").font(.system(size: 20)).bold().foregroundColor(Color("warnaText")).position(x:130,y:30)
                                Text("Binus SASC").font(.system(size: 18)).foregroundColor(Color("warnaText")).position(x:78,y:10)

                                Link(destination: URL(string: "https://linktr.ee/studentadvisorybinus")!, label:{

                                    HStack{
                                        Image(systemName: "link.circle.fill").foregroundColor(Color("warnaText")).font(.system(size: 40)).position(x:40,y:10)
                                        Text("Click here for more:\nBinus SASC Counseling Schedule").font(.system(size: 14)).foregroundColor(Color("warnaText")).frame(width: 200,height: 70).multilineTextAlignment(.leading).position(x:-30,y:10)
                                    }.padding().frame(width: 400)
                                })
                            }.frame(width: 400,height: .infinity).background(Color("warnaLog"))

                            
                            
                        }.tabViewStyle(PageTabViewStyle()).frame(height: 200).cornerRadius(25.0).padding()
//                        Spacer()
                        
                        TabView{
                            VStack{
                                Text("Mindfulness Breathing 🧘‍♀️").font(.system(size: 20)).bold().foregroundColor(Color("warnaText")).padding()
                                ScrollView{
                                    VStack{
                                        Text("• Start by breathing in and out slowly. One breath cycle should last for approximately 6 seconds.\n\n• Breathe in through your nose and out through your mouth, letting your breath flow effortlessly in and out of your body.\n\n• Let go of your thoughts. Let go of things you have to do later today or pending projects that need your attention. Simply let thoughts rise and fall of their own accord and be at one with your breath.")
                                        
                                            .font(.system(size: 14)).foregroundColor(Color("warnaText")).padding(.horizontal, 20.0)
                                    }
                                    
                                         
                                    
                                
                                }
                                Link(destination: URL(string: "https://www.pocketmindfulness.com/6-mindfulness-exercises-you-can-try-today/")!, label:{

                                    HStack{
                                        Image(systemName: "link.circle.fill").foregroundColor(Color("warnaText")).font(.system(size: 40))
                                        Text("Click here for more:\nMindfulness Breathing").font(.system(size: 14)).foregroundColor(Color("warnaText")).frame(width: 250,height: 50).multilineTextAlignment(.leading).position(x:80,y:20)
                                    }.padding().frame(width: 360,height: 80)
                                })
                            }
                                
                                
                                
                            VStack{
                                Text("Physical Exercise 🏃‍♂️").font(.system(size: 20)).bold().foregroundColor(Color("warnaText")).padding()
                                ScrollView{
                                    Text("Physical exercises are another mindfulness activity to utilize when you are feeling stressed or overwhelmed. Physical exercise doesn’t need to be vigorous exercise; sometimes, the most useful physical exercise is simply getting up out of your chair and moving around for a little bit. Next time you need to get up and move, try one of these exercises:\n\n• Go for a walk\n• Take out your trash or get the mail\n• Do a “body scan” from your head to your toes, focusing on how your entire body     is feeling\n• Practice a few yoga poses\n• Dance to your favorite song")
                                         
                                        .font(.system(size: 14)).foregroundColor(Color("warnaText")).padding(.horizontal, 20.0)
                                    
                                         
                                
                                }
                                Link(destination: URL(string: "https://www.suu.edu/blog/2021/10/mindfulness-techniques-students.html")!, label:{

                                    HStack{
                                        Image(systemName: "link.circle.fill").foregroundColor(Color("warnaText")).font(.system(size: 40))
                                        Text("Click here for more:\nPhysical Exercise").font(.system(size: 14)).foregroundColor(Color("warnaText")).frame(width: 250,height: 50).multilineTextAlignment(.leading).position(x:80,y:20)
                                    }.padding().frame(width: 360,height: 80)
                                })

                            }
                            
                            
                            
                            
                            
                            VStack{
                                Text("Sensory Exercise 🌊").font(.system(size: 20)).bold().foregroundColor(Color("warnaText")).padding()
                                ScrollView{
                                    Text("Sensory exercises are a great way to practice mindfulness by reaching out to immediate, tangible experiences. This is a way to ground yourself in the present moment and space. Try out these sensory exercises:\n\n• Place your hands in water\n• Hold a piece of ice in your hand\n• Touch or hold something comforting (i.e., a soft blanket, a stuffed animal, etc.)\n• Savor a scent you enjoy (i.e., light a     candle, brew a cup of tea, etc.)\n• Listen to your surroundings\n")
                                         
                                        .font(.system(size: 14)).foregroundColor(Color("warnaText")).padding(.horizontal, 20.0)
                                    
                                         
                                
                                }
                                Link(destination: URL(string: "https://www.suu.edu/blog/2021/10/mindfulness-techniques-students.html")!, label:{

                                    HStack{
                                        Image(systemName: "link.circle.fill").foregroundColor(Color("warnaText")).font(.system(size: 40))
                                        Text("Click here for more:\nSensory Exercise").font(.system(size: 14)).foregroundColor(Color("warnaText")).frame(width: 250,height: 50).multilineTextAlignment(.leading).position(x:80,y:20)
                                    }.padding().frame(width: 360,height: 80)
                                })
                            }
                            
                            VStack{
                                Text("Mindfulness Exercise ⛔️").font(.system(size: 20)).bold().foregroundColor(Color("warnaText")).padding()
                                ScrollView{
                                    Text("STOP Practice\nSTOP is a four step mindfulness technique that can be done virtually anytime and anywhere when you are feeling overwhelmed. Here are the steps:\n\nS: Stop\n\nStop what you are doing. Stop what you are thinking. Take a moment to dedicate yourself to mindfulness.\n\nT: Take a breath\n\nTake a deep breath in and out. Find a method that works for you and slows you down. You might count up or down, close your eyes, breathe in through your nose and out through your mouth, etc. See the breathing exercises later in this post for more ideas.\n\nO: Observe\n\nTake a moment to observe how you feel physically and mentally. Try to identify your feelings. Alternatively, take a moment to observe your surroundings. Focus on the details and how they make you feel.\n\nP: Proceed\n\nProceed intentionally with the task at hand. If you need to slow down, slow down. If you need to set a time limit, set a timer. If you need to drink some water, grab some water. Practice being in tune with yourself and proceed with your day in a way that makes sense for you.")
                                         
                                        .font(.system(size: 14)).foregroundColor(Color("warnaText")).padding(.horizontal, 20.0)
                                    
                                         
                                    
                                
                                }
                                Link(destination: URL(string: "https://www.suu.edu/blog/2021/10/mindfulness-techniques-students.html")!, label:{

                                    HStack{
                                        Image(systemName: "link.circle.fill").foregroundColor(Color("warnaText")).font(.system(size: 40))
                                        Text("Click here for more:\nMindfulness Exercise").font(.system(size: 14)).foregroundColor(Color("warnaText")).frame(width: 250,height: 50).multilineTextAlignment(.leading).position(x:80,y:20)
                                    }.padding().frame(width: 360,height: 80)
                                })
                            }
                            
                            VStack{
                                Text("Mindfulness Appreciation 💭").font(.system(size: 20)).bold().foregroundColor(Color("warnaText")).padding()
                                ScrollView{
                                    Text("These things can be objects or people; it’s up to you. Use a notepad to check off 5 by the end of the day.\n\nThe point of this exercise is to simply give thanks and appreciate the seemingly insignificant things in life, the things that support our existence but rarely get a second thought amidst our desire for bigger and better things.\n\nFor example: electricity powers your kettle, the postman delivers your mail, your clothes provide you warmth, your nose lets you smell the flowers in the park, your ears let you hear the birds in the tree by the bus stop, but…\n\n• Do you know how these things/processes came to exist, or how they really work?\n\n• Have you ever properly acknowledged how these things benefit your life and the lives of others?\n\n• Have you ever thought about what life might be like without these things?\n\n• Have you ever stopped to notice their finer, more intricate details?\n\n• Have you ever sat down and thought about the relationships between these things and how together they play an interconnected role in the functioning of the earth?\n\nOnce you have identified your 5 things, make it your duty to find out everything you can about their creation and purpose to truly appreciate the way in which they support your life.")
                                         
                                        .font(.system(size: 14)).foregroundColor(Color("warnaText")).padding(.horizontal, 20.0)
                                    
                                         
                                
                                }
                                Link(destination: URL(string: "https://www.pocketmindfulness.com/6-mindfulness-exercises-you-can-try-today/")!, label:{

                                    HStack{
                                        Image(systemName: "link.circle.fill").foregroundColor(Color("warnaText")).font(.system(size: 40))
                                        Text("Click here for more:\nMindfulness Appreciation").font(.system(size: 14)).foregroundColor(Color("warnaText")).frame(width: 250,height: 50).multilineTextAlignment(.leading).position(x:80,y:20)
                                    }.padding().frame(width: 360,height: 80)
                                })
                            }
                        }
                        .background(Color("warnaLog"))
                        .frame(height: 350)
                        .tabViewStyle(PageTabViewStyle())
                        .cornerRadius(25.0)
                        .padding()
                        
//                        Spacer(minLength: 80)
                    }
                    
                }
            }
    }
}

struct infoView_Previews: PreviewProvider {
    static var previews: some View {
        infoView()
    }
}
