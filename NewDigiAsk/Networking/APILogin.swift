//
//  APILogin.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 20/07/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

struct LoginRegister {
    static let shared = LoginRegister()
    func loginRequest(nomorOrEmail : String, password: String, completion: @escaping (User) -> ()){
        let baseUrl =  URL(string: "http://10.220.20.3:8080/api/auth/signin")
        guard let requestUrl = baseUrl else { fatalError() }
        var request = URLRequest(url: requestUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        //        let postString = "noTelpOrEmail=\(nomorOrEmail)&password=\(password)"
        //        request.httpBody = postString.data(using: String.Encoding.utf8)
        
        let newTodoItem = loginRegisterParams(noTelpOrEmail: nomorOrEmail, password: password)
        do {
            let jsonData = try JSONEncoder().encode(newTodoItem)
            request.httpBody = jsonData
        } catch {
            print(error.localizedDescription)
            return
        }
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                print( error.localizedDescription)
                var user : User?
                completion(user!)
                return
            }
            
            guard let data = data else {return}
            
            do {
                let json = try JSONDecoder().decode(User.self, from: data)
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
