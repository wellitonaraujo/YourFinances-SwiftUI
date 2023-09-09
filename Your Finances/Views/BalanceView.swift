//
//  BalanceView.swift
//  Your Finances
//
//  Created by Welliton da Conceicao de Araujo on 09/09/23.
//

import SwiftUI

struct BalanceView: View {
    var moviments: Movement
    
    var body: some View {
      
        HStack(alignment: .center) {
            HStack {
                VStack(alignment: .leading) {
                    CircleItem()
                        HStack {
                            RoundedRectangle(cornerRadius: 8)
                                .frame(width: 1)
                                .padding(.leading, 5)
                                .foregroundColor(Color("Gray-300"))
                
                            VStack(alignment: .leading) {
                                Text(moviments.title)
                                    .font(.system(size: 18.5))
                                    .foregroundColor(Color("Primary"))
                                    .padding(.bottom, 1)
                                Text(moviments.author)
                                    .font(.system(size: 16))
                                    .foregroundColor(Color("Gray-300"))
                                    .padding(.bottom, 1)
                                    
                                Text(moviments.value)
                                    .font(.system(size: 16.5))
                                    .fontWeight(.bold)
                                    .padding(.bottom, 1)
                            }
                            .padding(.leading, 16)
                        }
                }
                .fixedSize()
            }
            Spacer()
            
            if (moviments.isPix == true) {
                IsPix(moviments: moviments)
            } else {
                Date(moviments: moviments)
            }
        }// HStack
        .padding(.horizontal, 16)
        
        if(moviments.isPix == false){
        
        }
    }
}

struct BalanceView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            BalanceView(moviments: Service().balance.movements[0])
                .padding(.top)
        }
    
    }
}
