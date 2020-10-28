import Foundation

func isPerfect (num: Int) -> Bool{
    guard num >= 2 else {
        return false

    }
    var i = 1
    var sum = 0
    while(i < num){
        if num % i == 0{
            print("factor: \(i)")
            sum = sum + i
        }
        i += 1
    }
    if(sum == num){
        return true
    }
    else{
        return false
    }
}
print(isPerfect(num: 0))

