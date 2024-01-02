//
//  ContentView.swift
//  Dicee-SiftUi
//
//  Created by Shreyash Pattewar on 02/01/24.
//

import SwiftUI

struct ContentView: View {
   @State var leftDiceNum = 1
   @State var rightDiceNum = 1
    
    var body: some View {
        ZStack{
            
            Image(.background)
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image(.diceeLogo)
                
                Spacer()
                HStack {
                    DiceView(n: leftDiceNum)
                    DiceView(n: rightDiceNum)
                    
                }.padding(.horizontal)
                Spacer()
                Button(
                    action: {
                        self.leftDiceNum = Int.random(in: 1...6)
                        self.rightDiceNum =  Int.random(in: 1...6)
                        
                    },
                    label: {
                        Text("Roll")
                            .font(.system(size: 50))
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                            .padding()
                        
                        
                    }
                        
                ).background(.red)
                    
                Spacer()
               
            }
           
            
            
        }
    }
}

#Preview {
    ContentView()
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1,contentMode: .fit
                         
            ).padding()
    }
}
