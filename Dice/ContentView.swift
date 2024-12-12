//
//  ContentView.swift
//  Dice
//
//  Created by May Kabyar Oo on 16/06/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel()

    var body: some View {
        ZStack {
            Image("bgImage")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(spacing: 100) {
                Image("logo")
                    .frame(maxWidth: .infinity, maxHeight: 200)
                HStack {
                    Image("dice\(viewModel.dice.left)")
                    Image("dice\(viewModel.dice.right)")
                }
                .frame(maxWidth: .infinity)
                Button {
                    viewModel.rollDice()
                } label: {
                    Text("Roll")
                        .padding(.horizontal, 20)
                        .padding(.vertical, 4)
                        .foregroundColor(.white)
                        .background(Color.orange)
                        .cornerRadius(10)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
