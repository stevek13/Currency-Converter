//
//  ExchangeInfo.swift
//  Currency Converter
//
//  Created by Steve on 1/13/26.
//

import SwiftUI

struct ExchangeInfo: View {
    var body: some View {
        ZStack{
            //Background Parchment image
            Image("parchment")
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack{
                // Title Text
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(3)
                    .bold()
                // Description Text
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title3)
                    .padding(20)
               
                ExchangeRate(leftImage: .goldpiece, rightImage: .goldpenny, text: "1 Gold Piece = 4 Gold Pennies")
                ExchangeRate(leftImage: .goldpenny, rightImage: .silverpiece, text: "1 Gold Penny = 4 Silver Pieces")
                ExchangeRate(leftImage: .silverpiece, rightImage: .silverpenny, text: "1 Silver Piece = 4 Silver Pennies")
                ExchangeRate(leftImage: .silverpenny, rightImage: .copperpenny, text: "1 Silver Penny = 100 Copper Pennies")
                
                // Done Button
                Button("Done") {
                    
                }
                .buttonStyle(BorderedProminentButtonStyle())
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .padding()
                // Make Done button text color white
                .foregroundStyle(Color(.white))
                
            }
            // Make entire screen font black
            .foregroundStyle(Color(.black ))
        }
    }
}

#Preview {
    ExchangeInfo()
}
