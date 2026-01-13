//
//  ContentView.swift
//  currency converter
//
//  Created by Steve on 1/11/26.
//

import SwiftUI

struct ContentView: View {
    
    @State var showExchangeInfo = false
    @State var leftAmount = ""
    @State var rightAmount = ""
    
    var body: some View {
        ZStack {
            // Background Image
            Image(.background)
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                // Prancing Pony Image View
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                
                // Exchange Text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(Color(.white))
                
                // Conversion Section
                HStack {
                    // Left conversion section
                    VStack {
                        // Currency
                        HStack {
                            // currency image
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 33, height: 33)
                            // currency text field
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundStyle(Color(.white))
                        }
                        .padding(.bottom, -5)
                        
                        
                        // Text Field
                        TextField("Amount", text: $leftAmount)

                        .textFieldStyle(.roundedBorder)
                        
                    }
                    
                    // Equal Sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(Color(.white))
                        .symbolEffect(.pulse )
                    
                    // Right conversion section
                    VStack {
                        HStack {
                            // currency text field
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                            // currency image
                            Image(.goldpiece)
                                .resizable( )
                                .scaledToFit( )
                                .frame(width: 33, height: 33)
                            
                        }
                        .padding(.bottom, -5)
                        // Text Field
                        TextField("Amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                    }
                }
                .padding()
                .background(.black .opacity(0.5))
                .clipShape(.capsule)
                Spacer()
                
                // Info Button
                HStack {
                    
                    Spacer()
                    Button {
                        showExchangeInfo.toggle()
                        print("\(showExchangeInfo)")
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(Font.largeTitle.bold())
                            .foregroundStyle(Color(.white))
                    }
                    .padding(.trailing)
                }
            }
            .border(.blue)
        }
    }
}

#Preview {
    ContentView()
}
