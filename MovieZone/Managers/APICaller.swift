//
//  APICaller.swift
//  MovieZone
//
//  Created by Мой Macbook on 04.12.2023.
//

//import Foundation
//
//struct Constants {
//    static let APIkey = ""
//    static let url = ""
//}
//
//class APICaller {
//    
//    static let shared = APICaller()
    
//    func gettrendingMovies(completion: @escaping(String) -> Void) {
//        
//        guard let url = URL(string: "") else {return}
//        
//        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
//            
//            guard let data = data, error == nil else {
//                return
//            }
//            do {
//                let results = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
//                print(results)
//            } catch {
//                print(error.localizedDescription)
//            }
//        }
//        task.resume()
//    }
//}
