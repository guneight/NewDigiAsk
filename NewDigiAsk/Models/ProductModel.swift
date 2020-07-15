//
//  ProductModel.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 02/07/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit



typealias  ListProduct = [PacketProduct]

struct PacketProduct: Decodable {
        let idPacket: Int
        let namaPacket, deskripsi1, deskripsi2: String
        let idProduct: Int
        let namaProduct, deskripsiProduk, pengguna, deskripsiGantiRugi: String
        let deskripsiTambahan, syaratKetentuan: String
    }

struct Product : Decodable{
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

struct PacketDetail: Decodable {
    let idProductDetail: Int
    let jangkaWaktu: String
    let tsi: Float?
    let premi: Int
}

