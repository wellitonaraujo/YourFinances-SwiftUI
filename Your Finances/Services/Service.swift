//
//  Service.swift
//  Your Finances
//
//  Created by Welliton da Conceicao de Araujo on 09/09/23.
//

import Foundation

class Service: ObservableObject {
    var balance: Balance = Balance(name: "", role: "", description: "", location: "",                          
        movements: [
        Movement(
            id: UUID().uuidString,
            title: "Transferência enviada",
            author: "Chica",
            value: "R$ 32,99",
            date: "13/12",
            isPix: false
        ),
        Movement(
            id: UUID().uuidString,
            title: "Transferência enviada",
            author: "Potocó",
            value: "R$ 20,32",
            date: "01/10",
            isPix: false
        ),
        Movement(
            id: UUID().uuidString,
            title: "Depósito por boleto",
            author: "Jiraya",
            value: "R$ 72,98",
            date: "02/06",
            isPix: false
        ),
        
        Movement(
            id: UUID().uuidString,
            title: "Transferência PIX recebida",
            author: "Luva de Pedreiro",
            value: "R$ 22,98",
            date: "07/04",
            isPix: true
        ),
        
        Movement(
            id: UUID().uuidString,
            title: "Transferência PIX realizada",
            author: "Garibaldo",
            value: "R$ 432,98",
            date: "08/04",
            isPix: true
        ),
        ]
    )
}
