
import Foundation
import UIKit

var viewCollectors = [Any]()
var stringType: Any!
func traversViews(arrayRootView: [UIView]) {
    let  arrayView = arrayRootView
    for item in arrayView {
        viewCollectors.append(type(of:item))
        if item.subviews.count > 0 {
        traversViews(arrayRootView: item.subviews)
        }
    }
}
func  findMostCommonViewClass(root: UIView) -> Int? {
    //guard root != nil else { return nil }
    traversViews(arrayRootView: root.subviews)
    viewCollectors.append(type(of:root))
   // print("uu \(root.description) \n  \(type(of:root)) \n \(root.self)")
    let arraySet = NSCountedSet(array: viewCollectors)
    var maxCount = 0
        arraySet.enumerateObjects{ (a,b) in
        let aCount = arraySet.count(for: a)
        if aCount > maxCount {
            maxCount = aCount
            stringType = type(of: a)
        }
    }
    print(maxCount,stringType as Any,arraySet)
    return maxCount
    
}



       var view1 = UIView()
       let label = UILabel()
       let textField = UITextField()

       view1.addSubview(UILabel())
       view1.addSubview(UILabel())
       view1.addSubview(UIView())
       view1.addSubview(UIView())
       view1.addSubview(label)
       view1.addSubview(textField)
       label.addSubview(UILabel())
       label.addSubview(UIView())
       label.addSubview(UITextField())
       label.addSubview(UITextField())
       label.addSubview(UITextField())
       
       //traversViews(arrayRootView: view1.subviews)
       findMostCommonViewClass(root: view1)



/// optimized
var viewCollectors = [Any]()
var dic = [String:Int]()
var stringType: Any!
func traversViews(arrayRootView: [UIView]) {
    for item in arrayRootView {
        dic[String(describing: type(of: item)) ,default: 0] += 1
        if item.subviews.count > 0 {
        traversViews(arrayRootView: item.subviews)
        }
    }
}
func  findMostCommonViewClass(root: UIView) -> Int? {
    guard root != nil else { return nil }
    
    viewCollectors.append(type(of:root))
    traversViews(arrayRootView:root.subviews)
    dic[String(describing: type(of: root)) ,default: 0] += 1
    let maxCount = dic.max{ $0.value < $1.value }
    return maxCount?.value
}
