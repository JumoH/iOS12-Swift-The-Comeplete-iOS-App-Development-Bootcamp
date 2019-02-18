//
//  QuestionBank.swift
//  Attachment Style Test
//
//  Created by Junmo Han on 18/02/2019.
//  Copyright © 2019 Junmo Han. All rights reserved.
//

import Foundation

class QuestionBank {
    var list = [Question]()
    
    init() {
        
        // 회피테스트 문제
        
        let item = Question(text: "Q.1\n\n내가 얼마나 호감을 가지고 있는지 \n상대방에게 보이고 싶지 않다")
        list.append(item)

        list.append(Question(text: "Q.2\n\n나는 다른 사람과 가까워지는 것이 매우 편안하다"))
        list.append(Question(text: "Q.3\n\n상대방이 막 나와 친해지려고 할 때 \n꺼려 하는 나를 발견한다"))
        list.append(Question(text: "Q.4\n\n나는 다른 사람이 나와 매우 가까워지려 할 때 \n불편하다"))
        list.append(Question(text: "Q.5\n\n나는 다른 사람에게 마음을 여는 것이 \n편안하지 못하다"))
        list.append(Question(text: "Q.6\n\n나는 상대방과 가까워지기를 원하지만 \n나는 생각을 바꾸어 그만둔다"))
        list.append(Question(text: "Q.7\n\n나는 다른 사람이 나와 너무 가까워졌을 때 \n예민해진다"))
        list.append(Question(text: "Q.8\n\n나는 다른 사람에게 내 생각과 감정을 \n이야기하는 것이 편안하다"))
        list.append(Question(text: "Q.9\n\n나는 상대방과 너무 가까워지는 것을 피하려고 한다"))
        list.append(Question(text: "Q.10\n\n나는 다른 사람과 가까워지는 것이 비교적 쉽다"))
        list.append(Question(text: "Q.11\n\n나는 다른 사람에게 의지하기 어렵다"))
        list.append(Question(text: "Q.12\n\n나는 다른 사람과 너무 가까워지는 것을 \n좋아하지 않는다"))
        list.append(Question(text: "Q.13\n\n나는 상대방에게 모든 것을 이야기한다"))
        list.append(Question(text: "Q.14\n\n나는 대개 다른 사람에게 내 문제와 고민을 상의한다"))
        list.append(Question(text: "Q.15\n\n다른 사람에게 의지하는 것이 편안하다"))
        list.append(Question(text: "Q.16\n\n나는 상대방에게 위로, 조언, 또는 도움을 \n청하지 못한다"))
        list.append(Question(text: "Q.17\n\n내가 필요로 할 때 \n상대방에게 의지하는 게 도움이 된다"))
        list.append(Question(text: "Q.18\n\n나는 위로와 확신을 비롯한 많은 일들을 \n상대방에게 의지한다"))
        
        // 불안 테스트 문제
        
        list.append(Question(text: "Q.19\n\n나는 버림을 받는 것에 대해 걱정하는 편이다"))
        list.append(Question(text: "Q.20\n\n나는 다른 사람과의 관계에 대해 \n많이 걱정하는 편이다"))
        list.append(Question(text: "Q.21\n\n내가 다른 사람에게 관심을 가지는 만큼 \n그들이 나에게 관심을 가지지 않을까 봐 걱정이다"))
        list.append(Question(text: "Q.22\n\n나는 나와 친한 사람을 잃을까 봐 꽤 걱정이 된다"))
        list.append(Question(text: "Q.23\n\n나는 종종 내가 상대방에게 호의를 보이는 만큼 \n상대방도 그렇게 해 주기를 바란다"))
        list.append(Question(text: "Q.24\n\n나는 상대방과 하나가 되길 원하기 때문에 \n사람들이 때때로 나에게서 멀어진다"))
        list.append(Question(text: "Q.25\n\n나는 혼자 남겨질까 봐 걱정이다"))
        list.append(Question(text: "Q.26\n\n지나치게 친밀해지고자 하는 욕심 때문에 \n때로는 사람들이 두려워하여 거리를 둔다"))
        list.append(Question(text: "Q.27\n\n나는 상대방으로부터 사랑받고 있다는 것을 \n자주 확인받고 싶어 한다"))
        list.append(Question(text: "Q.28\n\n가끔 나는 다른 사람에게 더 많은 애정과 \n헌신을 보여줄 것을 강요한다"))
        list.append(Question(text: "Q.29\n\n나는 버림받는 것에 대해 때때로 걱정하지 않는다"))
        list.append(Question(text: "Q.30\n\n만약 상대방이 나에게 관심을 보이지 않는다면 \n나는 화가 난다"))
        list.append(Question(text: "Q.31\n\n상대방이 내가 원하는 만큼 가까워지는 것을 \n원치 않음을 안다"))
        list.append(Question(text: "Q.32\n\n내가 다른 사람과 교류가 없을 때 \n나는 다소 걱정스럽고 불안하다"))
        list.append(Question(text: "Q.33\n\n상대방이 내가 원하는 만큼 가까이에 있지 않을 때 \n실망하게 된다"))
        list.append(Question(text: "Q.34\n\n내가 필요로 할 때 상대방이 거절한다면 \n실망하게 된다"))
        list.append(Question(text: "Q.35\n\n상대방이 나에게 불만을 나타낼 때 \n나 자신이 정말 형편없게 느껴진다"))
        list.append(Question(text: "Q.36\n\n상대방이 나를 떠나서 많은 시간을 보내면 \n나는 불쾌하다"))
        
        }
}

