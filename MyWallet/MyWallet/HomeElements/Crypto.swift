//
//  Models.swift
//  MyWallet
//
//  Created by Nino Kurshavishvili on 10.05.25.
//

import Foundation

struct Crypto: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let price: String
    let change: String
    let nameQuantity: String
    let image: String
}


let cryptoList: [Crypto] = [
    Crypto(name: "BTC",  price: "69,792.45 USD", change: "+24.18%", nameQuantity: "1 BTC", image: "bitcoin"),
    Crypto(name: "XRP",  price: "0,5158 USD", change: "-24.18%", nameQuantity: "1 XRP",  image: "bitcoin")
]
