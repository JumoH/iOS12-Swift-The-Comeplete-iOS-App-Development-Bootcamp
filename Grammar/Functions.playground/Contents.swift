// 1. 그냥 함수
//func getMilk() {
//    print("go to the shops")
//    print("buy 2 cartons of milk")
//    print("pay $2")
//    print("come home")
//}

// 2. 함수에 parameter
//func getMilk(howManyMilkCartons: Int) {
//
//    print("go to the shops")
//    print("buy \(howManyMilkCartons) cartons of milk")
//
//    let priceToPay = howManyMilkCartons * 2
//
//    print("pay $\(priceToPay)")
//    print("come home")
//}

// 3. 함수에 여러 개의 parameter 받고 return 값도
// 화살표로 return 나타내고 그 옆에 return 할 것(output)의 type
func getMilk(howManyMilkCartons: Int, howMuchMoneyRobotWasGiven: Int) -> Int {
    
    print("go to the shops")
    print("buy \(howManyMilkCartons) cartons of milk")
    
    let priceToPay = howManyMilkCartons * 2
    
    print("pay $\(priceToPay)")
    print("come home")
    
    let change = howMuchMoneyRobotWasGiven - priceToPay
    
    return change
}

// Calling the getMilk() function
var amountOfChange = getMilk(howManyMilkCartons: 12, howMuchMoneyRobotWasGiven: 50 )

print("Hello master, here's your $\(amountOfChange) change")

