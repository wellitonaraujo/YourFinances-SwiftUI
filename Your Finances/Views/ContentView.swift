//
//  ContentView.swift
//  Your Finances
//
//  Created by Welliton da Conceicao de Araujo on 09/09/23.
//

import SwiftUI

struct ContentView: View {
    var service: Service = Service()
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading)  {
                HeaderView()
                BalancesView(moviments: service.balance.movements)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
