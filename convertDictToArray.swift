
import Foundation

let cities:[String:Int] = [
  "Mexico City": 22600000,
  "New York City": 22200000,
  "Los Angeles": 17700000,
  "Chicago": 9750000,
  "Washington":8500000,
  "San Francisco":7800000,
  "Boston": 7600000,
  "Toronto":7450000
]
func convertDictToArray(dic: [String: Int]) -> (arr1: [String] , arr2: [Int]){
    var array1: Array <Int> = Array<Int>()
    var array2: Array <String> = Array<String>()
    for (key, value) in dic{
        array1.append(value)
        array2.append(key)
    }
    print("array 1")
    for a in array1{
        print(a)
    }
    print("array 2")
    for a in array2{
        print(a)
    }
    return (array2, array1)
}
convertDictToArray(dic: cities)

