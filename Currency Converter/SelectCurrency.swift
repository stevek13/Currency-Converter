//
//  ExchangeRate.swift
//  Currency Converter
//
//  Created by Steve on 1/14/26.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @Binding var topCurrency: Currency
    @Binding var bottomCurrency: Currency
    
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
                IconGrid(currency: $topCurrency)
                // Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    .padding(.top)
                IconGrid(currency: $bottomCurrency)

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
            .foregroundStyle(.black)
        }
    }
}
#Preview {
    @Previewable @State var topCurrency: Currency = .silverPenny
    @Previewable @State var bottomCurrency: Currency = .goldPenny
    
    SelectCurrency(topCurrency: $topCurrency, bottomCurrency: $bottomCurrency)
}
