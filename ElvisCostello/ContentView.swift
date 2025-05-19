//
//  ContentView.swift
//  ElvisCostello
//
//  Created by Jeff Goddard on 5/18/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message: String = ""
    @State private var imageView: String = ""
    var body: some View {
        VStack {
            Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            
            Image(systemName: imageView)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            
            HStack {
                Button("Peace!") {
                    message = "Peace"
                    imageView = "peacesign"
                }

                Button("Love!") {
                    message = "Love"
                    imageView = "heart"
                }
                
                Button("Understanding!") {
                    message = "Understanding"
                    imageView = "lightbulb"
                }
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.purple)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
