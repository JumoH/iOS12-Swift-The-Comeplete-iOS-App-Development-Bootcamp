//
//  ViewController.swift
//  Attachment Style Test
//
//  Created by Junmo Han on 18/02/2019.
//  Copyright © 2019 Junmo Han. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let allQuestions = QuestionBank()
    let allResults = ResultBank()
    var questionNumber: Int = 0 //
    var avoidanceScore: Int = 0
    var anxietyScore: Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    
    @IBOutlet weak var completelyFalse: UIButton!
    @IBOutlet weak var mostlyFalse: UIButton!
    @IBOutlet weak var somewhatTrueFalse: UIButton!
    @IBOutlet weak var mostlyTrue: UIButton!
    @IBOutlet weak var completelyTrue: UIButton!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultLabel.isHidden = true
        nextQuesion()
        
    }
    
    
    @IBAction func selectionPressed(_ sender: UIButton) {
        calculateScore(tag: sender.tag) // 매개 변수 잘 알아두기
        questionNumber += 1
        nextQuesion()
    }
    
    func updateUI() {
        progressLabel.text = "\(questionNumber+1) / 36"
        progressBar.frame.size.width = (view.frame.size.width / 36) * CGFloat (questionNumber+1)
    }
    
    func nextQuesion() {
        if questionNumber <= 35 {
            questionLabel.text = allQuestions.list[questionNumber].questionText
            updateUI()
        } else {
            let alert = UIAlertController(title: "", message: "테스트가 끝났습니다!\n결과를 확인해보세요", preferredStyle: .alert)
            let checkResult = UIAlertAction(title: "결과 보기", style: .default, handler: { (UIAlertAction) in
                self.showResult()
                })
            
            alert.addAction(checkResult)
            present(alert, animated: true, completion: nil)
        }
    }
        
    func calculateScore(tag: Int) {
        // 회피 테스트
        if questionNumber <= 17 {
            if questionNumber == 1 || questionNumber == 7 || questionNumber == 9 || questionNumber == 12 || questionNumber == 13 || questionNumber == 14 || questionNumber == 15 || questionNumber == 16 || questionNumber == 17 {
                avoidanceScore += (6-tag)
                print(avoidanceScore)
            } else {
                avoidanceScore += tag
                print(avoidanceScore)
            }
        // 불안 테스트
        } else {
            if questionNumber == 28 {
                anxietyScore += (6-tag)
                print(avoidanceScore, anxietyScore)
            } else {
                anxietyScore += tag
                print(avoidanceScore, anxietyScore)
            }
            
        }
        
    }
    
    func showResult() {
        resultLabel.isHidden = false
        questionLabel.isHidden = true
        progressLabel.isHidden = true
        progressBar.isHidden = true
        completelyFalse.isHidden = true
        mostlyFalse.isHidden = true
        somewhatTrueFalse.isHidden = true
        mostlyTrue.isHidden = true
        completelyTrue.isHidden = true
        
        if avoidanceScore < 42 && anxietyScore < 47 {
            resultLabel.text = allResults.list[0].resultText
        } else if avoidanceScore < 42 && anxietyScore >= 47 {
            resultLabel.text = allResults.list[1].resultText
        } else if avoidanceScore >= 42 && anxietyScore < 47 {
            resultLabel.text = allResults.list[2].resultText
        } else {
            resultLabel.text = allResults.list[3].resultText
        }
    }
    
}
