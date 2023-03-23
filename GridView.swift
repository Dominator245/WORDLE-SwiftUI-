//
//  GridView.swift
//  WORDLE
//
//  Created by  on 3/17/23.
//

import SwiftUI

struct GridView: View
{
    let columns: Int
    let rows: Int
    
    @EnvironmentObject var homeVM: HomeViewModel

    
    
    var body: some View
    {
        VStack(spacing: 10)
        {
            ForEach(0..<rows)
            { row in
                HStack(spacing: 10)
                {
                    ForEach(0..<columns)
                    { column in
                        GridBoxesView(letter2: homeVM.letterGrid[row][column], bgColor2: Color.black, frameSize2: 70, borderColor2: Color.red)
                        
                    }
                }
            }
        }
        
    }
}

struct GridBoxesView: View
{
    @State var letter2 = ""
    @State var bgColor2 = Color.black
    @State var frameSize2 = CGFloat(60)
    @State var borderColor2 = Color.white
    @State var textSize2 = CGFloat(45)
    
    let row: Int
    let column: Int
    
    @EnvironmentObject var homeVM: HomeViewModel

        var body: some View
        {
            let letter = homeVM.letterGrid[row][column]
            
                Text(letter2).font(.system(size: textSize2, weight: .heavy)).frame(width: frameSize2,  height: frameSize2).background(bgColor2).foregroundColor(Color.white).overlay(RoundedRectangle(cornerRadius: 0).stroke(borderColor2, lineWidth: 2))
    
        }
}

struct GridView_Previews: PreviewProvider
{
    static var previews: some View
    {
        GridView(columns: 5, rows: 6).environmentObject(dev.homeVM)
    }
}
