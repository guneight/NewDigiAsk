//
//  CartNetwork.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 13/08/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit
import  CoreData
struct Cart {
    static let shared = Cart()
    func createCart(idProduct: String, productName: String, productDescription: String, jenisPremi: String, jangkaWaktu: String, premi : String, nilaiPertanggungan: String ){
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return}
        let manageContext = appDelegate.persistentContainer.viewContext
        guard let checkOutEntity = NSEntityDescription.entity(forEntityName: "CheckOutEntity", in: manageContext) else { return  }
        let insertProduct  = NSManagedObject(entity: checkOutEntity, insertInto: manageContext)
        insertProduct.setValue(idProduct, forKey: "idProduct")
        insertProduct.setValue(productName, forKey: "productName")
        insertProduct.setValue(productDescription, forKey: "productDescription")
        insertProduct.setValue(jenisPremi, forKey: "jenisPremi")
        insertProduct.setValue(premi, forKey: "premi")
        insertProduct.setValue(nilaiPertanggungan, forKey: "nilaiPertanggungan")
        do {
            try manageContext.save()
        } catch let error {
            print(error)
        }
    }
    
    func deleteCart(idProduct : String){
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return}
        let managedContext = appDelegate.persistentContainer.viewContext
        let fetchRequest: NSFetchRequest<NSFetchRequestResult> = NSFetchRequest.init(entityName: "CheckOutEntity")
        fetchRequest.predicate = NSPredicate(format: "idProduct = %@", idProduct)
        do {
            let dataDelete = try managedContext.fetch(fetchRequest)[0] as! NSManagedObject
            managedContext.delete(dataDelete)
            try managedContext.save()
        } catch let error {
            print(error)
        }
    }
    
    func fetchDataCart()->[CartModel]{
        var cartModel = [CartModel]()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let managedContext = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "CheckOutEntity")
        
        do{
            let result = try managedContext.fetch(fetchRequest) as! [NSManagedObject]
            print(result.count)
            result.forEach{ cartModels in
                cartModel.append(
                    CartModel(
                        idProduct: cartModels.value(forKey: "idProduct") as! String,
                        productName: cartModels.value(forKey: "jangkaWaktu") as! String,
                        productDescription: cartModels.value(forKey: "jenisPremi") as! String,
                        jenisPremi: cartModels.value(forKey: "nilaiPertanggungan") as! String,
                        jangkaWaktu: cartModels.value(forKey: "premi") as! String,
                        premi :cartModels.value(forKey: "productDescription") as! String,
                        nilaiPertanggungan :cartModels.value(forKey: "nilaiPertanggungan") as! String)
                )
            }
        }catch let error{
            print(("persistentStoreCoordinator = \(String(describing: managedContext.persistentStoreCoordinator))"))
            print(error)
        }
        return cartModel
    }
    
}
