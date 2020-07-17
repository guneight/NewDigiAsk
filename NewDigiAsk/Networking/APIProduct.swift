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
    
    
    
    
    func getDataIdentitasPenerimaManfaat(idUser: String, idProduct: String, idPacket: String,  completion: @escaping (Daftar) -> ()){
        let baseUrl = URL(string:"http://10.220.20.3:8080/api/digiask/beli-product/transaksi/user/\(idUser)/product/\(idProduct)/product-detail/\(idPacket)")
        guard let url = baseUrl else {return}
        print(url)
              URLSession.shared.dataTask(with: url) { (data, response, error) in
                  if let error = error {
                      print(error.localizedDescription)
                      return
                  }

                  guard let data = data else {return}
                  do {
                      let json = try JSONDecoder().decode(Daftar.self, from: data)
                    print(json)
                      DispatchQueue.main.async {
                          completion(json)
                      }
                  } catch {
                      print(error.localizedDescription)
                      return
                  }
              }.resume()
    }
    
    func getProductFromCart(idUser : String, completion: @escaping([ProductinCart])-> ()){
        let baseUrl = URL(string: "http://10.220.20.3:8080/api/digiask/beli-product/shopping-cart/\(idUser)")
        guard let url = baseUrl else {return}
        print(url)
              URLSession.shared.dataTask(with: url) { (data, response, error) in
                  if let error = error {
                      print(error.localizedDescription)
                      return
                  }

                  guard let data = data else {return}
            
                  do {
                      let json = try JSONDecoder().decode([ProductinCart].self, from: data)
                    print(json)
                      DispatchQueue.main.async {
                          completion(json)
                      }
                  } catch {
                      print(error.localizedDescription)
                      return
                  }
              }.resume()
    }
    
}
