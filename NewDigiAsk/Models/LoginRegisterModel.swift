//
//  LoginRegisterModel.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 20/07/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import Foundation

struct LoginResponse : Decodable {
    let accessToken : String
    let tokenType : String
}

struct loginRegisterParams : Codable{
    var noTelpOrEmail : String!
    var password : String!
}


struct User: Decodable {
    let userId: Int
    let noTelp, email: String
    let roles: [String]
    let accessToken, tokenType: String
}
