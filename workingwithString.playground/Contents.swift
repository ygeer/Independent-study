//: Playground - noun: a place where people can play

import UIKit

var str = "Hello"
var newstring=str + " Yoni!"

for character in newstring.characters{
    print(character)
    
}
let newTypeString=NSString(string: newstring)
newTypeString.substring(to: 5)
newTypeString.substring(from: 6)
NSString(string: newTypeString.substring(from: 6)).substring(to: 4)
newTypeString.substring(with: NSRange(location:6, length: 4))

if newTypeString.lowercased.contains("y"){
    print("Yes")
}
else{print("no")}

newTypeString.components(separatedBy: " ")
