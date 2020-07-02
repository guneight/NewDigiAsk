//
//  APIProduct.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 02/07/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class FetchingListProduct{
       func getDataFromApi(){
        let session = URLSession(configuration: .default)
        guard let url = URL(string: "http://10.220.20.3:8080/api/digiask/beli-product/product") else { return  }
        print(url)
        let dataTask = session.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print(error.localizedDescription)
            }
            if let response = response {
                print("Response:\(response)")
            }
            guard let data = data else { return }
            
            do {
                let json = JSONDecoder()
                let  listProduct = try json.decode(ListProduct.self, from : data)
                print("Product List :\(listProduct[0].namaPacket)")
               
            }catch{
                print(error.localizedDescription)
            }
        }
        dataTask.resume()
    }
    
    func getDataPacketDetailFromApi(){
           let session = URLSession(configuration: .default)
           guard let url = URL(string: "http://10.220.20.3:8080/api/digiask/beli-product/packet/2") else { return  }
           print(url)
           let dataTask = session.dataTask(with: url) { (data, response, error) in
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
           dataTask.resume()
       }
    
}
