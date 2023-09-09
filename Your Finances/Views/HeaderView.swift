//
//  HeaderView.swift
//  Your Finances
//
//  Created by Welliton da Conceicao de Araujo on 09/09/23.
//

import SwiftUI

struct HeaderView: View {
    @State private var hideBalance = false
    
    var body: some View {
        VStack {
            Text("Extrato")
                    .foregroundColor(Color("Black"))
                    .fontWeight(.semibold)
                    .font(.system(size: 18))
                    .padding(.bottom, 10)

            
        VStack(alignment: .leading) {
            
            ZStack {
                Rectangle()
                    .frame(height: 100)
                    .foregroundColor(Color("Gray-100"))
               
                HStack {
                    VStack(alignment: .leading, spacing: 20) {
                        HStack() {
                            Text("Seu saldo")
                                .fontWeight(.regular)
                                .font(.system(size: 16))
                                .foregroundColor(Color("Gray-300"))
                           
                            Button(action: {
        
                            }, label: {
                                Image(systemName: "eye.slash.fill")
                                    .foregroundColor(Color("Primary"))
                            })
                        }
                       

                        Rectangle()
                            .frame(width: 140,height: 4)
                            .foregroundColor(Color("Primary"))
                    }
                    .padding(.bottom,20)
                    Spacer()
                }
                .padding(.horizontal, 16)
            }
            
            HStack() {
                Text("Suas movimentações")
                    .fontWeight(.semibold)
                    .padding(.top, 20)
                    .padding(.horizontal, 16)
            }
        }
    }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
