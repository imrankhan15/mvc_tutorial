//
//  NetworkingService.swift
//  MVC-S
//
//  Created by Muhammad Faisal Imran Khan on 1/1/19.
//  Copyright © 2019 MI Apps. All rights reserved.
//

import Foundation

class NetworkingService {
    private init() {}
    static let shared = NetworkingService()
    
    func getData(fromURL url: URL, completion: @escaping (Any)-> Void){
        let session = URLSession.shared
        
       // guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {return}
        let task = session.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            do {
                let json = try JSONSerialization.jsonObject(with: data, options:[])
                DispatchQueue.main.async {
                    completion(json)
                }
                
            } catch{}
        }
        task.resume()
    }
}
