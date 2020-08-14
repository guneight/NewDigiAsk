//
//  CheckOutModel.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 11/08/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit
import CoreData

struct CartModel: Decodable{
    let idProduct: String
    let productName: String
    let productDescription: String
    let jenisPremi: String
    let jangkaWaktu: String
    let premi : String
    let nilaiPertanggungan: String
}



