//
//  Moviments.swift
//  Your Finances
//
//  Created by Welliton da Conceicao de Araujo on 09/09/23.
//

import Foundation

struct Movement: Identifiable {
    var id: String
    let title: String
    let author: String
    let value: String
    let date: String
    let isPix: Bool?
}
