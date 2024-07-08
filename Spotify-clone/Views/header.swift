//
//  new.swift
//  Spotify-clone
//
//  Created by Piyush saini on 26/06/24.
//

import SwiftUI

var header: some View{
    ScrollViewHeader{
        Image("titleImage")
            .resizable()
            .scaledToFill()
    }
    .overlay(
        VStack (alignment: .leading, spacing: 5){
            Text("Music To Be Murdered By")
                .font(.title2)
                .bold()
                .foregroundColor(.white)
                .padding(.leading)
            HStack {
                Image("profile")
                    .resizable()
                    .frame(width: 25,height: 25)
                    .cornerRadius(50)
                    .padding(.leading)
                
                Text("Eminem")
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(.white)
            }
            HStack{
                Text("Album ")
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(.gray)
                +
                Text("·")
                    .font(.body)
                    .bold()
                    .foregroundColor(.gray)
                +
                Text(" 2020")
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(.gray)
            }
            .padding([.leading, .bottom])
        }
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(LinearGradient(colors: [.black.opacity(0), .black.opacity(1)], startPoint: .top, endPoint: .bottom))
        
        , alignment: .bottomLeading
    )
    .frame(height: 350)
}

public struct ScrollViewHeader<Content: View>: View {
    
    public init(
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.content = content
    }
    
    private let content: () -> Content
    
    public var body: some View {
        GeometryReader { geo in
            content().stretchable(in: geo)
        }
    }
}

private extension View {
    
    @ViewBuilder
    func stretchable(in geo: GeometryProxy) -> some View {
        let width = geo.size.width
        let height = geo.size.height
        let minY = geo.frame(in: .global).minY
        let useStandard = minY <= 0
        self.frame(width: width, height: height + (useStandard ? 0 : minY))
            .offset(y: useStandard ? 0 : -minY)
    }
}
