//
//  ProductModel.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 02/07/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit



typealias  ListProduct = [PacketProduct]

struct PacketProduct: Codable {
    let idPacket : Int
    let product : Product
    let namaPacket : String?
    let currency : String?
    let deskripsi1 : String?
    let deskripsi2 : String?
}
struct Product : Codable{
    let idProduct : Int
    let namaProduct : String
    let deskripsiProduk : String?
    let pengguna : String?
    let deskripsiGantiRugi : String?
    let deskripsiTambahan : String?
    let picture : String?
    let logo: String?
    let syaratKetentuan : String?
}


typealias PacketDetails = [PacketDetail]

struct PacketDetail: Codable {
    let idProductDetail: Int
    let jangkaWaktu: String
    let tsi: String?
    let premi: Int
}

