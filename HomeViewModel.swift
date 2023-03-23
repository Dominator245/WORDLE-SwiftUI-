//
//  HomeViewModel.swift
//  WORDLE
//
//  Created by  on 3/22/23.
//

import SwiftUI

class HomeViewModel: ObservableObject
{
    @Published var answer = "Bread"
    @Published var currentPos = 0
    @Published var currentLetterTapped = ""

    @Published var letterGrid =  [["", "", "", "", ""],
                                  ["", "", "", "", ""],
                                  ["", "", "", "", ""],
                                  ["", "", "", "", ""],
                                  ["", "", "", "", ""],
                                  ["", "", "", "", ""]]
    
}
