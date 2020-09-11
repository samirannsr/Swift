//: [Previous](@previous)

import Foundation
import UIKit

//var str = "Hello, playground"

//: [Next](@next)


let srt = "3000000 ریال"

let attributes: [NSAttributedString.Key: Any] = [
    .foregroundColor: UIColor.white,
    .backgroundColor: UIColor.red,
    .font: UIFont.boldSystemFont(ofSize: 36)
    //.withSize()
]
let view = UIView()
let priceLabel = UILabel()
priceLabel.adjustsFontSizeToFitWidth = true
view.addSubview(priceLabel)



//let p = "300000"
//var priceFont = UIFont(name: "Arial", size: 14)
//     var currencyFont = UIFont(name: "Arial", size: 20)
//
//
//let priceLabelAttribute = NSAttributedString(string: p, attributes: [ .foregroundColor: UIColor.red , .font: priceFont!])
//let currencyLabelAttribute = NSAttributedString(string: "ریال", attributes: [.foregroundColor: UIColor.green, .font: currencyFont!])
//let paragraph =   NSMutableParagraphStyle()
//
//           paragraph.alignment = .left
//
//
//
//let stringAttribute = NSMutableAttributedString()
//stringAttribute.append(priceLabelAttribute)
//stringAttribute.append(currencyLabelAttribute)
priceLabel.font =  UIFont(name: "Arial", size: 14)
priceLabel.text = "werwr"
priceLabel.textColor = UIColor.red
priceLabel.textAlignment = .center
//priceLabel.attributedText = stringAttribute
priceLabel


var str1 = "-۳۰۰۰۵۵۵۸۸۸"
extension String{
    func commaSeparated2()  {
        var str2: String = self
        var array : [String]
//        let chunks = self.startIndex.stride(to: count, by: 3).map {
//            print(str)
//            self[$0 ..< $0.advancedBy(3, limit: endIndex)]
//        }
//
//        print(chunks)
        print("gggggggg")
        for i in stride(from: count, to: 0, by: -3){
            if i < count {
                
                str2.insert(",", at: index(startIndex,offsetBy: i))}
        }
        print(str2)
        
        let priceLabelAttribute = NSAttributedString(string: str2, attributes: [ .foregroundColor: UIColor.red ])
        let stringAttribute = NSMutableAttributedString()
        stringAttribute.append(priceLabelAttribute)
    }
}
str1.commaSeparated2()


let s = "11231245"
let r = String(s.enumerated().reversed().map { $0 > 0 && $0 % 3 == 0 ? [":", $1] : [$1]}.joined())
print(r)



@propertyWrapper struct StringToInt{
    
    var wrappedValue: Int?
    init(changeValue: Int) {
       
        wrappedValue = 333
    }

   
}


extension Int {
    
    init(changeValue: Int) {
    
      return 33
    }
    
    int(
}
