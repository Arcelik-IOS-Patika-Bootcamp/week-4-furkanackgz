//
//  CryptoCurrency.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 14.06.2022.
//

import Foundation

struct CryptoCurrency: Codable {
    var symbol: String?
    var priceChange: String?
    var priceChangePercent: String?
    var weightedAvgPrice: String?
    var prevClosePrice: String?
    var lastPrice: String?
    var lastQty: String?
    var bidPrice: String?
    var bidQty: String?
    var askPrice: String?
    var askQty: String?
    var openPrice: String?
    var highPrice: String?
    var lowPrice: String?
    var volume: String?
    var quoteVolume: String?
    var openTime: Int?
    var closeTime: Int?
    var firstId: Int?
    var lastId: Int?
    var count: Int?
}
