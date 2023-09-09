//
//  IsPix.swift
//  Your Finances
//
//  Created by Welliton da Conceicao de Araujo on 09/09/23.
//

import SwiftUI

struct IsPix: View {
    var moviments: Movement
    
    var body: some View {
        HStack {
            VStack {
                Text("Pix")
                    .font(.system(size: 13.5))
                    .frame(width: 45, height: 20)
                    .background(Color("Primary"))
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                
                Text(moviments.date)
                    .font(.system(size: 16.5))
                    .foregroundColor(Color("Gray-300"))
                    .opacity(0.75)
                    .fontWeight(.medium)
            }
            .padding(.bottom, 1)
        }
    }
}

struct IsPix_Previews: PreviewProvider {
    static var previews: some View {
        IsPix(moviments: Service().balance.movements[0])
    }
}
