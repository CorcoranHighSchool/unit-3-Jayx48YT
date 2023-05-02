//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by David Armando Parra on 4/26/23.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var resultAnswersLabel: UILabel!
    @IBOutlet weak var resultDefinitionLabel: UILabel!
    

    var responses: [Answer]!
    
    init?(coder: NSCoder, responses: [Answer]) {
        self.responses = responses
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
        navigationItem.hidesBackButton = true
    }
    
    func calculatePersonalityResult() {
        let frequencyOfAnswers = responses.reduce(into:
            [SportType: Int]()) { (counts, answer) in
            if let exisingCount = counts[answer.type] {
            } else {
                counts[answer.type] = 1
            }
        }
        
        let frequentAnswersSorted = frequencyOfAnswers.sorted(by:
        { (pair1, pair2) in
            return pair1.value > pair2.value
        })
        
        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 > $1.1 }.first!.key
        
        resultAnswersLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
        resultDefinitionLabel.text = mostCommonAnswer.definition
    }
    
   
}
