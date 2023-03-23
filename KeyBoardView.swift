//
//  KeyBoardView.swift
//  WORDLE
//
//  Created by  on 3/17/23.
//

import SwiftUI

struct KeyBoardView: View
{
    
    let letterRow1 = ["Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P"]
    let letterRow2 = ["A", "S", "D", "F", "G", "H", "J", "K", "L"]
    let letterRow3 = ["Z", "X", "C", "V", "B", "N", "M"]
    
    @EnvironmentObject var homeVM: HomeViewModel

    
    var body: some View
    {
        VStack
        {
            HStack
            {
                ForEach(letterRow1, id: \.self)
                { letter in
                    BoxView(letter2: letter, bgColor2: Color.black, frameSize2: 31, borderColor2: Color.red, textSize2: 20)
                }
            }
            HStack
            {
                ForEach(letterRow2, id: \.self)
                { letter in
                    BoxView(letter2: letter, bgColor2: Color.black, frameSize2: 31, borderColor2: Color.red, textSize2: 20)
                }
            }
            HStack
            {
                EDView(letter3: "Enter", bgColor3: Color.black, frameSize3: 31 * 1.7, borderColor3: Color.red, textSize3: 20)
                ForEach(letterRow3, id: \.self)
                { letter in
                    BoxView(letter2: letter, bgColor2: Color.black, frameSize2: 31, borderColor2: Color.red, textSize2: 20)
                }
                EDView(letter3: "Del", bgColor3: Color.black, frameSize3: 31 * 1.7, borderColor3: Color.red, textSize3: 20)
            }
        }
    }
}



struct KeyBoardView_Previews: PreviewProvider
{
    static var previews: some View
    {
        KeyBoardView().environmentObject(dev.homeVM)
    }
}
