//
//  Date.swift
//  Your Finances
//
//  Created by Welliton da Conceicao de Araujo on 09/09/23.
//

import SwiftUI

struct Date: View {
    var moviments: Movement
    
    var body: some View {
        HStack {
            VStack {
                Text(moviments.date)
                    .font(.system(size: 16.5))
                    .foregroundColor(Color("Gray-300"))
                    .fontWeight(.medium)
                    .padding(.bottom, 1)
                
            }
        }
    }
}

struct Date_Previews: PreviewProvider {
    static var previews: some View {
        Date(moviments: Service().balance.movements[0])
    }
}
