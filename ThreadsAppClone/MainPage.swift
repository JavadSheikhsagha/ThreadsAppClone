//
//  MainPage.swift
//  LiquidEffectTutorial
//
//  Created by enigma 1 on 7/8/23.
//

import SwiftUI

struct MainPage: View {
    
    @State var isOnThreads : Bool = true
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 10)
            
//            HeaderView()
            
            Spacer()
                .frame(height: 20)
            ScrollView {
                
                VStack {
                    
                    UserProfileInfoView()
                    
                    Spacer()
                        .frame(height: 20)
                    
                    Button {
                        
                    } label: {
                        Text("Follow")
                            .foregroundColor(.white)
                            .bold()
                            .background {
                                Color.black.opacity(0.9)
                                    .frame(width: UIScreen.main.bounds.width - 40,height: 44)
                                    .clipShape(RoundedRectangle(cornerRadius: 16))
                            }
                    }

                    
                    Spacer()
                        .frame(height: 32)
                    
                    PickerView(isOnThreads: isOnThreads)
                        
                    
                    ForEach(threads) { thread in
                        SingleThreadView(thread: thread)
                    }
                    
                }
                
            }
        }
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}

struct OptionsBtn: View {
    var body: some View {
        HStack(spacing: 3) {
            Circle()
                .frame(width:4, height: 4)
            Circle()
                .frame(width:4, height: 4)
            Circle()
                .frame(width:4, height: 4)
        }
    }
}

struct SingleThreadView: View {
    
    @State var thread : ThreadModel
    
    var body: some View {
        VStack {
            
            Spacer()
                .frame(height: 10)
            
            HStack {
                
                VStack {
                    
                    Image("zuck")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 47, height: 47)
                        .clipShape(Circle())
                    
                    Rectangle()
                        .frame(width: 2)
                        .opacity(0.2)
                    
                    
                    
                }
                
                Spacer()
                    .frame(width: 10)
                
                VStack(alignment: .leading) {
                    Spacer()
                        .frame(height: 4)
                    HStack {
                        Text("Zuck")
                            .font(.system(size: 16))
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Text("33m")
                            .opacity(0.3)
                            .font(.system(size: 14))
                        
                        OptionsBtn()
                    }
                    
                    Text(thread.description)
                        .font(.system(size: 18))
                    
                    HStack(spacing: 18) {
                        
                        Image("heart")//like
                            .foregroundColor(.black.opacity(0.9))
                        
                        Image("message")//comment
                            .foregroundColor(.black.opacity(0.9))
                        
                        Image("repost")//share
                            .foregroundColor(.black.opacity(0.9))
                        
                        Image("send")//forward
                            .foregroundColor(.black.opacity(0.9))
                    }
                    
                }
                
                Spacer()
                
            }.padding(.horizontal)
            
            HStack {
                
                Spacer()
                    .frame(width: 16)
                
                ZStack {
                    
                    Image("avatar")
                        .resizable()
                        .frame(width:16, height:16)
                        .clipShape(Circle())
                        .offset(x: -4)
                    
                    Circle().foregroundColor(.white)
                        .frame(width: 16, height: 16)
                        .offset(x: 2)
                    
                    Image("zuck")
                        .resizable()
                        .frame(width:16, height:16)
                        .clipShape(Circle())
                        .offset(x: 4)
                }
                
                Spacer()
                    .frame(width: 16)
                
                Text("\(thread.replies) Replies")
                    .opacity(0.3)
                    .font(.system(size: 14))
                
                Circle()
                    .foregroundColor(.black)
                    .opacity(0.2)
                    .frame(width: 4, height: 4)
                
                Text("\(thread.likes) Likes")
                    .opacity(0.3)
                    .font(.system(size: 14))
                
                Spacer()
                
            }.padding(.horizontal)
            
            Spacer()
                .frame(height: 15)
            
            Rectangle()
                .frame(height: 1)
                .opacity(0.2)
        }
    }
}

struct HeaderView: View {
    var body: some View {
        HStack {
            
            Image("zuck")
                .resizable()
                .frame(width: 20, height: 24)
            
            Text("Back")
            
            Spacer()
            
            Image("zuck")
                .resizable()
                .frame(width: 24, height: 24)
            
            Image("zuck")
                .resizable()
                .frame(width: 24, height: 24)
            
        }.padding(.horizontal)
    }
}

struct UserProfileInfoView: View {
    var body: some View {
        VStack {
            
            ZStack {
                
                HStack {
                    
                    Spacer()
                    
                    Image("zuck")
                        .resizable()
                        .frame(width: 84, height: 84)
                        .clipShape(Circle())
                    
                }
                
                VStack(alignment: .leading) {
                    
                    Text("Mark Zuckerburg")
                        .font(.system(size: 24))
                        .bold()
                    
                    Spacer()
                        .frame(height: 10)
                    
                    HStack {
                        Text("zuck")
                            .font(.system(size: 20))
                        
                        Text("Thread.net")
                            .font(.system(size: 13))
                            .padding(10)
                            .foregroundColor(.gray)
                            .background {
                                Rectangle()
                                    .foregroundColor(.gray.opacity(0.1))
                                    .clipShape(RoundedRectangle(cornerRadius: 16))
                                
                            }
                    }
                    
                    HStack {
                        ZStack {
                            
                            ForEach(0..<3) { index in
                                
                                Circle().foregroundColor(.white)
                                    .frame(width: 24, height: 24)
                                    .offset(x: CGFloat((index * 4) - 2))
                                
                                Image("avatar")
                                    .resizable()
                                    .frame(width:24, height:24)
                                    .clipShape(Circle())
                                    .offset(x: CGFloat(index * 4))
                                
                            }
                            
                        }
                        
                        Spacer()
                            .frame(width: 20)
                        
                        Text("412k followers")
                            .foregroundColor(.gray)
                        
                        Circle()
                            .frame(width: 4, height: 4)
                            .foregroundColor(.gray)
                        
                        Text("fb.com")
                            .foregroundColor(.gray)
                    }
                    
                    HStack {
                        Spacer()
                    }
                }
                
            }
            
        }.padding(.horizontal)
    }
}
