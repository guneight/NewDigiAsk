//
//  Constans.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 05/08/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit
enum Result<T, E: Error> {
    case success(T)
    case failure(E)
}

struct EndpointUrl {
    let allProduct  = "http://10.220.20.3:8080/api/digiask/detail-product/all"
}
