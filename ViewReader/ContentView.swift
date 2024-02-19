//
//  ContentView.swift
//  ViewReader
//
//  Created by Tony Chen on 30/1/2024.
//

import SwiftUI

struct ContentView: View {
    let colors: [Color] = [.red, .green, .blue]

    var body: some View {
        ScrollViewReader { value in
            ScrollView {
                Button("Jump to #8") {
                    value.scrollTo(8)
                }
                .padding()

                ForEach(0..<100) { i in
                    Text("Example \(i)")
                        .font(.title)
                        .frame(width: 200, height: 200)
                        .background(colors[i % colors.count])
                        .id(i)
                }
            }
        }
        .frame(height: 350)
    }
}

#Preview {
    ContentView()
}
