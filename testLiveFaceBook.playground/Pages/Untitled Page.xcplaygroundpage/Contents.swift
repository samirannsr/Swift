//: [Previous](@previous)

import Foundation

var dateString = "2020-04-26 16:05:00"

//: [Next](@next)
//let dateFormatter = DateFormatter()
//    let locale = Locale(identifier: "fa_IR")
//    private var calendar: Calendar {
//        return locale.calendar
//    }
let dateFormatterGet = DateFormatter()
dateFormatterGet.dateFormat = "yyyy-MM-dd HH:mm:ss"
let date1 = dateFormatterGet.date(from: dateString)
print(date1)
let locale = Locale(identifier: "fa_IR")
private var calendar: Calendar {
    return locale.calendar
}
let dateFormatter = DateFormatter()
     //  dateFormatter.calendar = Calendar(identifier: .persian)
    dateFormatter.locale = locale
      // dateFormatter.dateFormat = "dd MMMM  hh:mm"
var result: String
//       if calendar.isDateInYesterday(date1!) {
dateFormatter.dateFormat = "hh:mm"
           result =  NSLocalizedString("Yesterday title", comment: "") + "  " + dateFormatter.string(from: date1!)
//       } else {
               // dateFormatter.dateFormat = "dd MMMM  hh:mm"
          // result = dateFormatter.string(from: date1!)
      // }
print(result)

print(dateString)
//
//
//
//   override var ormatter: DateFormatter {
//       let formatter = DateFormatter()
//       formatter.isLenient = true
//       formatter.dateFormat = "yyyy-MM-dd"
//       return formatter
//   }
