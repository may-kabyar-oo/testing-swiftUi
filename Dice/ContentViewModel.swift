//
//  ContentViewModel.swift
//  Dice
//
//  Created by May Kabyar Oo on 16/06/2024.
//

import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var dice = Dice(left: 1, right: 2)
    
    func rollDice() {
        dice.left = Int.random(in: 1...6)
        dice.right = Int.random(in: 1...6)
    }
 }
