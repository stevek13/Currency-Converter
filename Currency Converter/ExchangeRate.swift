//
//  ExchangeRate.swift
//  Currency Converter
//
//  Created by Steve on 1/14/26.
//

import SwiftUI

struct ExchangeRate: View {
    
    let leftImage: ImageResource
    let rightImage: ImageResource
    let text: String
    
    var body: some View {
        // Exchange Rates
        HStack{
            // Left Currency Image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            // Exchange Rate Text
            
            Text(text)
            
            // Right Currency Image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
        }
    }
}
#Preview {
    ExchangeRate(leftImage: .silverpiece, rightImage: .silverpenny, text: "1 Silver Piece = 4 Silver Pennies")
}
