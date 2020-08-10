//
//  APIProduct.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 02/07/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit
import  Alamofire
struct FetchAllProduct {
    static let share = FetchAllProduct()
    func getDataFromApi(completion: @escaping ([ProductAll]) -> ()){
        let baseUrl = URL(string: "http://10.220.20.3:8080/api/digiask/detail-product/all")
        guard let url = baseUrl else {return}
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            guard let data = data else {return}
       
            do {
                let json = try JSONDecoder().decode([ProductAll].self, from: data)
                DispatchQueue.main.async {
                    completion(json)
                }
            } catch {
                print(error.localizedDescription)
                return
            }
        }.resume()
    }
    
    func getDetailProduct(id_packet: String, completion: @escaping ([ProductDetails]) -> ()) {
           let urlString = "http://10.220.20.3:8080/api/digiask/packet"
           guard var urlComponents = URLComponents(string: urlString) else {return}

           urlComponents.queryItems = [
               URLQueryItem(name: "detail_product_id", value: id_packet)
           ]

           guard let url = urlComponents.url else {return}
            print("url", url)
           URLSession.shared.dataTask(with: url) { (data, response, error) in
               if let error = error {
                   print(error.localizedDescription)
                   return
               }

               guard let data = data else {return}
               print("data", data)
               do {
                   let json = try JSONDecoder().decode([ProductDetails].self, from: data)
                   DispatchQueue.main.async {
                       completion(json)
                   }
               } catch {
                   print(error.localizedDescription)
                   return
               }
           }.resume()
       }
    
    func getDetailJenisProduct(id_packet_detail: String, completion: @escaping ([DetailJenisProduct]) -> ()) {
        let urlString = "http://10.220.20.3:8080/api/digiask/detail_packet"
        guard var urlComponents = URLComponents(string: urlString) else {return}

        urlComponents.queryItems = [
            URLQueryItem(name: "packet_id", value: id_packet_detail)
        ]

        guard let url = urlComponents.url else {return}
         print("url", url)
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print(error.localizedDescription)
                return
            }

            guard let data = data else {return}
            print("data", data)
            do {
                let json = try JSONDecoder().decode([DetailJenisProduct].self, from: data)
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




//API ignored

struct  FetchingListProduct{
    static let shared = FetchingListProduct()
    func getDataFromApi(completion: @escaping ([ProductDetails]) -> ()){
        let baseUrl = URL(string: "http://10.220.20.3:8080/api/digiask/beli-product/product")
        guard let url = baseUrl else {return}
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            guard let data = data else {return}
            
            do {
                let json = try JSONDecoder().decode([ProductDetails].self, from: data)
                DispatchQueue.main.async {
                    completion(json)
                }
            } catch {
                print(error.localizedDescription)
                return
            }
        }.resume()
    }
    
    
    
    func getDataJenisProdukDetailFromApi(idProduct : String, completion: @escaping ([ProductDetails]) -> ()){
        let baseUrl = URL(string: "http://10.220.20.3:8080/api/digiask/beli-product/packet/\(idProduct)") 
        guard let url = baseUrl else {return}
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            guard let data = data else {return}
            
            do {
                let json = try JSONDecoder().decode([ProductDetails].self, from: data)
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

