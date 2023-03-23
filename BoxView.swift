//
//  BoxView.swift
//  WORDLE
//
//  Created by  on 3/17/23.
//

import SwiftUI

struct BoxView: View
{
    @State var letter2 = "A"
    @State var bgColor2 = Color.black
    @State var frameSize2 = CGFloat(60)
    @State var borderColor2 = Color.white
    @State var textSize2 = CGFloat(45)
    
    @EnvironmentObject var homeVM: HomeViewModel


        var body: some View
        {
            
            Button(action:
            {
                letterTapped(letter2)
                homeVM.letterGrid[0][0] = letter2
                homeVM.currentPos += 1
            })
            {
                Text(letter2).font(.system(size: textSize2, weight: .heavy)).frame(width: frameSize2,  height: frameSize2).background(bgColor2).foregroundColor(Color.white).overlay(RoundedRectangle(cornerRadius: 0).stroke(borderColor2, lineWidth: 2))
            }
            
        }
    
    func letterTapped(_ letter: String)
    {
        print("Letter \(letter) was tapped")
        homeVM.currentLetterTapped = letter
        homeVM.letterGrid[0][0] = letter
        print(homeVM.letterGrid)
    }
}

struct EDView: View
{
    @State var letter3 = ""
    @State var evalColor = Color.gray
    @State var bgColor3 = Color.black
    @State var frameSize3 = CGFloat(100)
    @State var borderColor3 = Color.white
    @State var textSize3 = CGFloat(45)
    
        var body: some View
        {
            Button(action:
            {
                letterTapped(letter3)
                
            })
            {
                Text(letter3).font(.system(size: textSize3, weight: .heavy)).frame(width: frameSize3,  height: 31).background(bgColor3).foregroundColor(Color.white).overlay(RoundedRectangle(cornerRadius: 0).stroke(borderColor3, lineWidth: 2))
            }
            
        }
        
    func letterTapped(_ letter: String)
    {
        print("Letter \(letter) was tapped")
    }
    
}


struct BoxView_Previews: PreviewProvider {
    static var previews: some View {
        BoxView().environmentObject(dev.homeVM)
    }
}
