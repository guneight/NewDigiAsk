//
//  APIProduct.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 02/07/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

struct  FetchingListProduct{
    static let shared = FetchingListProduct()
    func getDataFromApi(completion: @escaping ([PacketProduct]) -> ()){
        let baseUrl = URL(string: "http://10.220.20.3:8080/api/digiask/beli-product/product")
         guard let url = baseUrl else {return}
      
             URLSession.shared.dataTask(with: url) { (data, response, error) in
                 if let error = error {
                     print(error.localizedDescription)
                     return
                 }

                 guard let data = data else {return}
                 
                 do {
                     let json = try JSONDecoder().decode([PacketProduct].self, from: data)
                     DispatchQueue.main.async {
                         completion(json)
                     }
                 } catch {
                     print(error.localizedDescription)
                     return
                 }
             }.resume()
    }
    
   
    
    func getDataJenisProdukDetailFromApi(idProduct : String, completion: @escaping ([PacketDetail]) -> ()){
        let baseUrl = URL(string: "http://10.220.20.3:8080/api/digiask/beli-product/packet/\(idProduct)") 
        guard let url = baseUrl else {return}
        
               URLSession.shared.dataTask(with: url) { (data, response, error) in
                   if let error = error {
                       print(error.localizedDescription)
                       return
                   }

                   guard let data = data else {return}
                   
                   do {
                       let json = try JSONDecoder().decode([PacketDetail].self, from: data)
                       DispatchQueue.main.async {
                           completion(json)
                       }
                   } catch {
                       print(error.localizedDescription)
                       return
                   }
               }.resume()
    }
    
    
    
    
    func getDataIdentitasPenerimaManfaat(idCart: Int, completion: @escaping (Data) -> ()){
        let baseUrl = URLComponents(string:"http://10.220.20.3:8080/api/digiask/beli-product/shopping-cart/")
        guard var urlComponents = baseUrl else {return}
        urlComponents.queryItems = [
                  URLQueryItem(name: "", value: "\(idCart)"),
                  
              ]

              guard let url = urlComponents.url else {return}
              print(url)
              URLSession.shared.dataTask(with: url) { (data, response, error) in
                  if let error = error {
                      print(error.localizedDescription)
                  }
                  if let response = response {
                      print("Response:\(response)")
                  }
                  guard let data = data else { return }
                  
                  do {
                      let json = JSONDecoder()
                      let  packetDetails = try json.decode(PacketDetails.self, from : data)
                      print("Product List :\(packetDetails.count)")
                      
                  }catch{
                      print(error.localizedDescription)
                  }
              }
              .resume()
    }
    
}
