//
//  HomeView.swift
//  WORDLE
//
//  Created by  on 3/15/23.
//

import SwiftUI

struct HomeView: View
{
    @EnvironmentObject var homeVM: HomeViewModel

    var body: some View
    {
        NavigationView
        {
            ZStack
            {
                Color.black.ignoresSafeArea()
                VStack
                {
                    Divider().frame(height: 2.5).overlay(Color.red)
                    HStack
                    {
                        TLetterView(letter: "W", bgColor: Color.gray, borderColor: Color.black)
                        TLetterView(letter: "O", bgColor: Color.orange, borderColor: Color.black)
                        TLetterView(letter: "R", bgColor: Color.green, borderColor: Color.black)
                        TLetterView(letter: "D", bgColor: Color.orange, borderColor: Color.black)
                        TLetterView(letter: "L", bgColor: Color.gray, borderColor: Color.black)
                        TLetterView(letter: "E", bgColor: Color.green, borderColor: Color.black)
                    }
                    Divider().frame(height: 2.5).overlay(Color.red)
                    NavigationLink(destination: ContentView(), label: {Text("Start").foregroundColor(Color.red).font(.system(size: 30, weight: .heavy)).padding(.vertical, -1)})
                }
            }
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject(dev.homeVM)
    }
}
