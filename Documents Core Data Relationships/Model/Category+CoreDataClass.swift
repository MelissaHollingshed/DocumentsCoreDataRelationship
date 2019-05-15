//
//  Category+CoreDataClass.swift
//  Documents Core Data Relationships Search
//
//  Created by Melissa Hollingshed on 5/1/2019
//  Copyright © 2019 Melissa Hollingshed. All rights reserved.
//
//

import UIKit
import CoreData

@objc(Category)
public class Category: NSManagedObject {
    
    convenience init?(name: String?) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate  //UIKit is needed to access UIApplication
        guard let managedContext = appDelegate?.persistentContainer.viewContext,
            let name = name, name != "" else {
                return nil
        }
        self.init(entity: Category.entity(), insertInto: managedContext)
        self.name = name
    }
}
