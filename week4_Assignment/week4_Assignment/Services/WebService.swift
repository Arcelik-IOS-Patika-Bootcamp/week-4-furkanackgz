//
//  WebService.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 13.06.2022.
//

import Foundation

class WebService {
    
    static let run = WebService()
    let session = URLSession.shared
    
}

// Fetching Crypto Currency data
extension WebService {
    
    func fetchCryptoCurrencies(_ completion:@escaping (([CryptoCurrency]?)->(Void)) ) {
        
        guard let url = URL(string: "https://api.binance.us/api/v3/ticker/24hr") else { return }
        
        let task = session.dataTask(with: url) { data, response, error in
            
            do {
                guard let data = data else { return }
                
                let object = try JSONDecoder().decode([CryptoCurrency].self, from: data)
                completion(object)
            } catch let error {
                print(error)
            }
        }
        task.resume()
    }
}
