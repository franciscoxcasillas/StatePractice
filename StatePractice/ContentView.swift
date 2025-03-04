//
//  ContentView.swift
//  StatePractice
//
//  Created by Francisco Jean on 04/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LikeButtonView()
    }
}

struct LikeButtonView: View {
    
    @State private var heartColor: Color = .black
    
    var body: some View {
        Button(action: {
            heartColor = (heartColor == .black) ? .red : .black
        }){
                Image(systemName: "heart.fill")
                .foregroundColor(heartColor)
                .font(.system(size: 28))
                .animation(.easeInOut, value: heartColor)
        }
    }
}

#Preview {
    ContentView()
}
