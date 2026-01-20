//
//  ExchangeRate.swift
//  Currency Converter
//
//  Created by Steve on 1/14/26.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack {
            // Parchment Backgroun  Image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack {
                // Text
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                
                // Currency Icons
                        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                            ForEach(Currency.allCases) { currency in
                                CurrencyIcon(CurrencyImage: currency.image, CurrencyName: currency.name)
                                
                            }

                }
                // Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                
                // Currency Icons
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                    ForEach(Currency.allCases) { currency in
                        CurrencyIcon(CurrencyImage: currency.image, CurrencyName: currency.name)
                        
                    }
                    }
                // Done Button
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(BorderedProminentButtonStyle())
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .padding()
                // Make Done button text color white
                .foregroundStyle(Color(.white))
                
            
        }
            .padding(20)
            .multilineTextAlignment(.center)

        }
    }
}
#Preview {
    SelectCurrency()
}
