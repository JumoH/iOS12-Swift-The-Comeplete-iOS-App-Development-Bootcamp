import UIKit

// 1.
//// Float보다 Double이 더 정확
//func calcBMI (weight: Double, height: Double) -> String{
//
//    let bmi = weight / pow(height, 2)
//    let shortenedBMI = String(format: "%.2f", bmi)
//
//    var interpretation = ""
//
//    if bmi > 25 {
//        interpretation = "you are overweight!"
//    } else if bmi > 18.5 { // 어차피 위에 라인 찍고오는 거라 '%% bmi <= 25' 안써줘도 됨
//        interpretation = "you are of normal wieght!"
//    } else {
//        interpretation = "you are underweight!"
//    }
//
//    return "Your BMI is \(shortenedBMI) and  \(interpretation)"
//}
//
//var bmiResult = calcBMI(weight: 70, height: 1.8)
//print(bmiResult )

// 2.
func bmiCalcImperialUnits(weightInPounds: Double, heightInFeet: Double, remainderInches: Double) {
    let weightInKg = weightInPounds * 0.45359237
    let totalInches = heightInFeet * 12 + remainderInches
    let heightInMeters = totalInches * 0.0254
    
    let bmi = String(format: "%.2f", weightInKg / pow(heightInMeters, 2))
    
    print(bmi)
}

bmiCalcImperialUnits(weightInPounds: 140, heightInFeet: 5, remainderInches: 11)
