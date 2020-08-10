//
//  ProductDetailModel.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 06/08/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import Foundation

struct DetailJenisProduct: Decodable {
    let idPacketDetail: Int
    let packet: Packet
    let currency: String
    let jangkaWaktu: String
    let tsi: Int
    let premi: Int
}

struct Packet: Decodable {
    let idPacket: Int
    let productDetail: productDetail
    let namaPacket: String
    let deskripsi1: String
    let deskripsi2: String
}

