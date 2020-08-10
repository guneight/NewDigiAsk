//
//  APIProtocol.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 05/08/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

protocol FecthAllProcductProtocol {
    func fecthAllProduct(completion : @escaping(Result<Data, Error>)->Void)
}
