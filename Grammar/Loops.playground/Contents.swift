import UIKit

//var sum: Int = 0
//
//for number in 1...5 {
//
//    let evenNumber = 2 * number - 1
//
//    sum += evenNumber
//
//}
//print(sum)
//
//sum = 0
//
//for number in 1...10 where number % 2 == 0 {
//    sum += number
//}
//
//print(sum)

// 내가 스스로 해본 것
//func beerSong() {
//
//    var numberOfBottles  = 99
//
//    for _ in 1...ly99 {
//
//        if numberOfBottles - 1 == 0 {
//            print("""
//                \(numberOfBottles) bottle of beer on the wall, \(numberOfBottles) bottles of beer,
//                Take one down and pass it around, no more bottles of beer on the wall.
//
//                No more bottles of beer on the wall, no more bottles of beer,
//                Go to the store and buy some more, 99 bottles of beer on the wall.
//                """)
//        } else {
//            print("""
//                \(numberOfBottles) bottles of beer on the wall, \(numberOfBottles) bottles of beer,
//                Take one down and pass it around, \(numberOfBottles - 1) bottles of beer on the wall.
//
//                """)
//        }
//        numberOfBottles -= 1
//    }
//
//}
//
//beerSong()

// 첫 번째에는 outside parameter 이름은 써주고 두 번째에는 inside parameter 이름을 써주면 안에서 두 번째 것으로 쓸 수 있음
func beerSong(forThisManyBottlesOfBeer  totalNumberOfBottles: Int) -> String{
    var lyrics: String = ""
    
    for number in (1 ... totalNumberOfBottles).reversed() {
        
        let newLine: String = """
\(number) bottles of beer on the wall, \(number) bottles of beer,
Take one down and pass it around, \(number - 1) bottles of beer on the wall.\n

"""
        lyrics += newLine
    }
    
    lyrics += """
No more bottles of beer on the wall, no more bottles of beer,
Go to the store and buy some more, 99 bottles of beer on the wall.
"""
    
    return lyrics
}

print(beerSong(forThisManyBottlesOfBeer: 25))
