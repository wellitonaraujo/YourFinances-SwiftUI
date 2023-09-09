//
//  Circle\.swift
//  Your Finances
//
//  Created by Welliton da Conceicao de Araujo on 09/09/23.
//

import SwiftUI

struct CircleItem: View {
    var body: some View {
        Circle()
            .frame(width: 10, height:  10)
            .foregroundColor(Color("Primary"))
    }
}

struct CircleItem_Previews: PreviewProvider {
    static var previews: some View {
        CircleItem()
    }
}
