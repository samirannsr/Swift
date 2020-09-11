//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
        //Do any additional setup after loading the view.
   
    struct HotelTime {
        var stratTime: Int
        var endTime: Int
        var hotelName: String
        init(stratTime:Int, endTime:Int, hotelName:String){
            self.endTime = endTime
            self.stratTime = stratTime
            self.hotelName = hotelName
        }
    }

    var hotelTimes1: [HotelTime]!
    var arrdic = [String:[Int:Int]]()

    func parsItems() {
        for i in hotelTimes1 {
            if  arrdic[i.hotelName] != nil {
                if arrdic[i.hotelName]?[i.stratTime] != nil {
                    arrdic[i.hotelName]?[i.stratTime] = i.endTime
                } else if let keyIsExist = arrdic[i.hotelName]?.filter({ $0.value == i.stratTime })  {
                    if keyIsExist.count > 0 {
                        arrdic[i.hotelName]?[keyIsExist.first!.key] = i.endTime
                       if arrdic[i.hotelName]?[i.endTime] != nil {
                        let endTime = (arrdic[i.hotelName]![i.endTime])!
                        arrdic[i.hotelName]?[keyIsExist.first!.key] = endTime
                        arrdic[i.hotelName]?.removeValue(forKey: i.endTime)
                        }
                    } else {
                        arrdic[i.hotelName]?[i.stratTime] = i.endTime
                    }
                } else {
                    arrdic[i.hotelName]?[i.stratTime] = i.endTime
                }
            } else {
                arrdic[i.hotelName] = [i.stratTime: i.endTime]
                }
        }
    }
    
 


    hotelTimes1 = [HotelTime(stratTime: 2, endTime: 3, hotelName: "H1"),
                   HotelTime(stratTime: 6, endTime: 7, hotelName: "H2"),
                   HotelTime(stratTime: 6, endTime: 7, hotelName: "H1"),
                   HotelTime(stratTime: 8, endTime: 12, hotelName: "H1"),
                   HotelTime(stratTime: 3, endTime: 6, hotelName: "H1")]
    parsItems()
    print(arrdic)
    
    //O(N)

