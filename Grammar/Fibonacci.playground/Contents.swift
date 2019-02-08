/*
 FIBONACCI NUMBERS
 0, 1, 1, 2, 3, 5, 8, ...

n = 5
 0, 1, 1, 2, 3, 5, 8
 */

import UIKit

/*
 // 내가 푼 답
func fibonacci(until: Int ) -> Array<Int> {
    
    var first: Int = 1
    var second: Int = 1
    var sum: Int = 1
    var arrayOfFibonacci = [Int]()
    
    arrayOfFibonacci.append(0)
    
    for number in 1 ... until {
        
        if number == 1 || number == 2 {
            arrayOfFibonacci.append(first)
        } else {
            first = second
            second = sum
            sum = first + second
            arrayOfFibonacci.append(sum)
        }
    }
    return arrayOfFibonacci
}

print(fibonacci(until: 8))
*/

// 인강에서 알려준 답
func fibonacci(until n: Int) {
    print(0)
    print(1)
    
    var num1: Int = 0
    var num2: Int = 1
    
    for _ in 2 ... n {
        let num = num1 + num2
        print(num)
        
        num1 = num2
        num2 = num
    }
}

fibonacci(until: 5)

