//
//  ListView.swift
//  Spotify-clone
//
//  Created by Piyush saini on 25/06/24.
//

import SwiftUI

struct ListView: View {
    var safeArea: EdgeInsets
    var size: CGSize
    
    var body: some View {
        ScrollView{
            VStack (spacing: 0){
                header
                buttonsLine
                content
            }
            .overlay(alignment: .top){
                HeaderView()
            }
        }
    }
    
    @ViewBuilder
    func HeaderView()->some View{
        GeometryReader{proxy in
            let minY = proxy.frame(in: .named("SCROLL")).minY
            let height = size.height * 0.35
            let progress = minY / (height * (minY > 0 ? 0.5 : 0.8))
            let titleProgress = minY/height
            HStack(spacing : 15){
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "chevron.left")
                        .font(.title3)
                        .foregroundColor(.white)
                })
                
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            }
            .overlay(content:{
                Text("Music To Be Murdered By")
                    .fontWeight(.semibold)
                    .offset(y : -titleProgress > 1 ? 0 :45)
                    .animation(.easeInOut(duration: 0.25), value: -titleProgress > 1)
                    .clipped()
                
                if(-titleProgress>1 ){
                    Button(action: {
                    }) {
                        ZStack {
                            Circle()
                                .foregroundColor(Color(red: 19/255, green: 225/255, blue: 84/255))
                                .frame(width: 50, height: 50)
                            Image(systemName: "play.fill")
                                .font(.system(size: 24))
                                .foregroundColor(.black)
                        }
                        .offset(y: -titleProgress > 1 ? 0 : 45)
                        .animation(.easeInOut(duration: 0.25), value: -titleProgress > 1)
                        .clipped()
                        .offset(y: 30)
                        .offset(x:155)
                    }
                }
            })
            .padding(.top , safeArea.top + 10)
            .padding([.horizontal , .bottom] , 15)
            
            .background(content:{
                LinearGradient(
                    gradient: Gradient(colors: [Color(red: 0.7, green: 0.0, blue: 0.0), Color(red: 0.4, green: 0.0, blue: 0.0)]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                
                .opacity(-progress > 1.25 ? 1.25 : 0)
            })
            .offset(y : -minY)
        }
        .frame(height: 35)
    }
}

#Preview {
    MainView()
}
