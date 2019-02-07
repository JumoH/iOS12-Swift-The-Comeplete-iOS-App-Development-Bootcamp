import UIKit

"""

▶ Int, UInt 둘 다 정수값을 저장하는 데 사용
▶ Int - 양수부터 음수까지 모두 저장가능 ( ex - Int8 : -128 ~ 127 )
▶ UInt - 양수만 저장가능 ( ex - UInt8 : 0 ~ 255 )

Int       :  -9223372036854775808 ~ 9223372036854775807       (-2^64 ~ 2^64-1)
Int8     :  -128 ~ 127                                                                       (-2^8  ~ 2^8-1)
Int16   :  -32768 ~ 32767                                                               (-2^16 ~ 2^16-1)
Int32   :  -2147483648 ~ 2147483647                                           (-2^32 ~ 2^32-1)
Int64   :  -9223372036854775808 ~ 9223372036854775807       (-2^64 ~ 2^64-1)

Uint     :  0 ~ 18446744073709551615                                          (0 ~ 2^64-1)
Uint8   :  0 ~ 255                                                                            (0 ~ 2^8-1)
Uint16 :  0 ~ 65535                                                                        (0 ~ 2^16-1)
Uint32 :  0 ~ 4294967295                                                              (0 ~ 2^32-1)
Uint64 :  0 ~ 18446744073709551615                                          (0 ~ 2^64-1)

"""


func loveCalculator(yourName: String, theirName: String) -> String {

    // 0에서 100까지 중 random number
    //let loveScore = Int.random(in: 0 ... 100)
    // arc4random_uniform은 UIKit import 해야지 접근 가능
    let loveScore = arc4random_uniform(101)
    
    if loveScore > 80 {
        return "Your love score is \(loveScore). Your love each other like Kanye loves Kanye"
    } else if loveScore > 40 && loveScore <= 80 {
        return "Your love score is \(loveScore). Your love each other like Kanye loves Kanye"
    } else {
        return "Your love score is \(loveScore). No love possible, you'll be alone!"
    }
}

print(loveCalculator(yourName: "Angela Yu", theirName: "Jack Bauer"))


