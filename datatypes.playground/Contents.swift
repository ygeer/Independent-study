//: Playground - noun: a place where people can play
import Foundation
import UIKit

let itemsObject=UserDefaults.standard.object(forKey: "items")
var items:[String]
var names=["Yoni", "Claire","Nash","Issy"]
if let tempitems=itemsObject as? [String]{
    items=tempitems
    items=names
}
else{
    items=names
    print("empty array")
}
print()
for item in items{
    print("Name :" + item)
    print("Type : " + String(describing: type(of: item)))
}


