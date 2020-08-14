//
//  ProductModel.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 02/07/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit
struct ProductAll: Decodable {
    let idProductDetail: Int
    let product: product
}
struct ProductDetails: Decodable {
    let idPacket: Int
    let productDetail: productDetail
    let namaPacket: String
    let deskripsi1: String
    let deskripsi2: String
}

struct productDetail: Decodable {
    let idProductDetail: Int
    let product: product
}

struct product: Decodable {
    let idProduct: Int
    let namaProduct: String
    let deskripsiProduk : String
    let pengguna : String
    let deskripsiGantiRugi: String
    let deskripsiTambahan: String
    let picture :  String?
    let logo: String?
    let syaratKetentuan: String
}




// MARK: - Product
struct Daftar: Decodable {
    let penerimaManfaat : [penerimaManfaat]
    let daftarTertanggung: [daftarTertanggung]
}





// MARK: - penerimaManfaat
struct penerimaManfaat: Decodable {
    let nama : String
    let noKTP : String
    let email : String
    let noTelp: String
}

// MARK: - DaftarTertanggung
struct daftarTertanggung: Decodable {
    let nama : String
    let noKTP : String
    let email : String
    let noTelp: String
}
typealias ProductCart = [ProductinCart]
struct ProductinCart: Decodable {
    let namaProduct : String
    let premi : Int
}

//"noTelpOrEmail": "izannuary@gmail.com",
//"password": "123456789"
