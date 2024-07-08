//
//  ContentView.swift
//  Spotify-clone
//
//  Created by Piyush saini on 25/06/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        GeometryReader{
            let safeArea = $0.safeAreaInsets
            let size  = $0.size
            ListView(safeArea: safeArea , size: size)
                .ignoresSafeArea(.container , edges: .top  )
            
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    MainView()
}
