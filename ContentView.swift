//
//  ContentView.swift
//  WORDLE
//
//  Created by  on 3/15/23.
//

import SwiftUI

struct ContentView: View
{
    @State var showingAlert = false
    
    @EnvironmentObject var homeVM: HomeViewModel
    
    var body: some View
    {        
        
        ZStack
        {
            Color.black.ignoresSafeArea()
            VStack
            {
                Text("W O R D L E").onAppear{showingAlert = true}.foregroundColor(Color.red).font(.system(size: 60, weight: .heavy)).alert(isPresented: $showingAlert) {Alert(title: Text("How to Play \n\n Guess the Wordle in 6 tries \n\n - Each guess must be 5 letters \n - Color of tiles will change to show how close your guess is \n\n Green = Right Letter, location \n Orange = Right letter, wrong location \n Gray = Not in word at all"), dismissButton: .default(Text("Let's Go!")))}
                Divider().frame(height: 2).overlay(Color.red).padding(.vertical, -30)
                Spacer()
                Text(homeVM.answer)
                GridView(columns: 5, rows: 6)
                Spacer()
                Spacer()
                KeyBoardView()
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView().environmentObject(dev.homeVM)
    }
}
