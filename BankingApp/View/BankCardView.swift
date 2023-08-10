//
//  BankCardView.swift
//  VisaCard
//
//  Created by RubyMaine on 10/08/2023.
//

import SwiftUI

struct BankCardView: View {
    
    let balance: String
    
    var body: some View {
        ZStack {
            VStack{
                HStack {
                    // Left section
                    VStack(alignment: .leading) {
                        Image("credit-card")
                            .resizable()
                            .frame(width: 40, height: 40)
                        
                        Spacer()
                        
                        HStack {
                            Text("На балансе")
                                .font(.subheadline)
                                .foregroundColor(Color.gray)
                            Image(systemName: "eye")
                                .font(.system(size: 13))
                        }
                        
                        Text("\(balance)$")
                            .padding(.top, 1)
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                        
                    }
                    .frame(maxWidth: .infinity,alignment: .leading)
                    
                    // Right section
                    VStack(alignment: .trailing) {
                        Label {
                            Text("Humans Bank")
                                .fontWeight(.bold)
                        } icon: {
                            Image(systemName: "globe.central.south.asia.fill")
                        }
                        Spacer()
                        Image("visa")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 70, height: 60, alignment: .bottom)
                    }
                }
                .padding()
                
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: 200)
        .background(Color("green"))
        .cornerRadius(25)
        .padding(.horizontal)
    }
}

struct BankCardView_Previews: PreviewProvider {
    static var previews: some View {
        BankCardView(balance: "24,098.00")
            .previewLayout(.sizeThatFits)
    }
}
