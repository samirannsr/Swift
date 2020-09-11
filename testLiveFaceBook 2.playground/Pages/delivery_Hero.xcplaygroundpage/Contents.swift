// -(int)solution:(NSMutableArray *)A {
//    // write your code in Objective-C 2.0
//
//    if ([A count] < 3) {
//        return [A count];
//    }
//    int result = 0;
//    int currentItemMaxLength = 0;
//    for(int i = 0; i < [A count]-2; i++) {
//
//        NSNumber *firstValue = [A objectAtIndex:i];
//        NSNumber *secondValue = [A objectAtIndex:i+1];
//        currentItemMaxLength = 2;
//        for(int j = i+2; j < [A count]; j++) {
//            if ([[A objectAtIndex:j] isEqualToNumber:firstValue] || [[A objectAtIndex:j] isEqualToNumber:secondValue]) {
//                currentItemMaxLength++;
//            } else {
//                break;
//            }
//        }
//        if (currentItemMaxLength > result) {
//            result = currentItemMaxLength;
//        }
//    }
//    return result;
//}
 
//func solution:(A:[Int])-> Int {
//    
//    if A.count < 3 {
//        return A.count
//     }
//     var result = 0
//     var currentItemMaxLength = 0
//    for i in < A.count-2 {
//         
//         var firstValue = A[i]
//         var secondValue = A[i+1]
//         currentItemMaxLength = 2
//        for j in i+2..<A.count {
//             if  A[j] == firstValue || A [j] == secondValue {
//                 currentItemMaxLength =+ 1
//             } else {
//                 break
//             }
//         }
//         if currentItemMaxLength > result {
//             result = currentItemMaxLength
//         }
//     }
//     return result
// }
