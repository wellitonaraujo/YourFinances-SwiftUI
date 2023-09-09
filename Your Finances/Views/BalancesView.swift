//
//  BalancesView.swift
//  Your Finances
//
//  Created by Welliton da Conceicao de Araujo on 09/09/23.
//

import SwiftUI

struct BalancesView: View {
    var moviments: [Movement]
    
    var body: some View {
        VStack {
            ForEach(moviments) { moviment in
                Button(action: {}, label: {
                    BalanceView(moviments: moviment)
                })
            }
        }
    }
}

struct BalancesView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            BalancesView(moviments: Service().balance.movements)
                .padding(24)
        }
    }
}
