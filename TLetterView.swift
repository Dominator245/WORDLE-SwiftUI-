//
//  TLetterView.swift
//  WORDLE
//
//  Created by  on 3/15/23.
//

import SwiftUI

struct TLetterView: View
{
    @State var letter = ""
    @State var bgColor = Color.white
    @State var frameSize = CGFloat(60)
    @State var borderColor = Color.white
    @State var textSize = CGFloat(45)
    
    var body: some View
    {
        Rectangle().frame(width: frameSize, height: frameSize).foregroundColor(bgColor).border(borderColor).overlay{Text(letter).font(.system(size: textSize, weight: .heavy)).foregroundColor(Color.white)}
    }
}

struct TLetterView_Previews: PreviewProvider
{
    static var previews: some View
    {
        TLetterView()
    }
}
