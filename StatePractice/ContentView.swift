//
//  ContentView.swift
//  StatePractice
//
//  Created by Francisco Jean on 04/03/25.
//

import SwiftUI

struct ContentView: View {
    @State private var likes: Int = 0
    @State private var heartGrayScale: Double = 1
    
    var body: some View {
        LikeButtonView(likes: $likes, heartGrayScale: $heartGrayScale)
    }
}

struct LikeButtonView: View {
    
    @Binding var likes: Int
    @Binding var heartGrayScale: Double
    
    var body: some View {
        Button(action: {
            heartGrayScale -= 0.1
            likes += 1
        }){
            VStack{
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
                    .grayscale(heartGrayScale)
                    .font(.system(size: 28))
                Text("\(likes)")
            }    
        }
    }
}

#Preview {
    ContentView()
}
