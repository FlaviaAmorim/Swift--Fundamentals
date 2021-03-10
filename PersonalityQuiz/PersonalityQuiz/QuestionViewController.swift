//
//  QuestionViewController.swift
//  PersonalityQuiz
//
//  Created by flaviaamorim on 03/03/21.
//

import UIKit

class QuestionViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet weak var singleButtom1: UIButton!
    @IBOutlet weak var singleButtom2: UIButton!
    @IBOutlet weak var singleButtom3: UIButton!
    @IBOutlet weak var singleButtom4: UIButton!
    
    
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet weak var multiLabel1: UILabel!
    @IBOutlet weak var multiLabel2: UILabel!
    @IBOutlet weak var multiLabel3: UILabel!
    @IBOutlet weak var multiLabel4: UILabel!
    @IBOutlet weak var multiSwitch1: UISwitch!
    @IBOutlet weak var multiSwitch2: UISwitch!
    @IBOutlet weak var multiSwitch3: UISwitch!
    @IBOutlet weak var multiSwitch4: UISwitch!

    
    @IBOutlet weak var rangedStackView: UIStackView!
    @IBOutlet weak var rangedLabel1: UILabel!
    @IBOutlet weak var rangedLabel2: UILabel!
    @IBOutlet weak var rangedSlider: UISlider!
    
    
    @IBOutlet weak var questionProgressView: UIProgressView!
    
    
    @IBAction func singleAnswerButtonPressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        
            switch sender {
            case singleButtom1:
                answersChosen.append(currentAnswers[0])
            case singleButtom2:
                answersChosen.append(currentAnswers[1])
            case singleButtom3:
                answersChosen.append(currentAnswers[2])
            case singleButtom4:
                answersChosen.append(currentAnswers[3])
            default:
                break
            }
        
            nextQuestion()
    }
    
    @IBAction func multipleAnswerButtonPressed(_ sender: Any) {
        
        let currentAnswers = questions[questionIndex].answers
    
        if multiSwitch1.isOn {
            answersChosen.append(currentAnswers[0])
        }
        if multiSwitch2.isOn {
            answersChosen.append(currentAnswers[1])
        }
        if multiSwitch3.isOn {
            answersChosen.append(currentAnswers[2])
        }
        if multiSwitch4.isOn {
            answersChosen.append(currentAnswers[3])
        }
        
        nextQuestion()
    }
    
    
    @IBAction func rangedAnswerButtonPressed(_ sender: Any) {
        let currentAnswers = questions[questionIndex].answers
        let index = Int(round(rangedSlider.value *
                                Float(currentAnswers.count - 1)))
        
        answersChosen.append(currentAnswers[index])
        
        nextQuestion()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }
    
    
    var questionIndex = 0
    var answersChosen: [Answer] = []
    
    var questions: [Question] = [
      Question(
        text: "Qual sua comida favorita?",
        type: .single,
        answers: [
          Answer(text: "Carne", type: .dog),
          Answer(text: "Peixe", type: .cat),
          Answer(text: "Cenoura", type: .rabbit),
          Answer(text: "Milho", type: .turtle)
        ]
      ),
      Question(
        text: "Quais atividades você gosta de fazer?",
        type: .multiple,
        answers: [
          Answer(text: "Natação", type: .turtle),
          Answer(text: "Dormir", type: .cat),
          Answer(text: "Carinho", type: .rabbit),
          Answer(text: "Comer", type: .dog)
        ]
      ),
      Question(
        text: "Quanto você gosta de andar de carro?",
        type: .ranged,
        answers: [
          Answer(text: "Eu não gosto", type: .cat),
          Answer(text: "Fico um pouco nervoso", type: .rabbit),
          Answer(text: "Eu quase não os vejo", type: .turtle),
          Answer(text: "Adoro eles", type: .dog)
        ]
      )
    ]
    
    func updateUI() {
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangedStackView.isHidden = true
        
        navigationItem.title = "Questão #\(questionIndex + 1)"
        
        let currentQuestion = questions[questionIndex]
        let currentAnswers = currentQuestion.answers
        let totalProgress = Float(questionIndex) / Float(questions.count)
        
        navigationItem.title = "Questão #\(questionIndex + 1)"
        questionLabel.text = currentQuestion.text
        questionProgressView.setProgress(totalProgress, animated:
                                            true)
        
        switch currentQuestion.type {
        case .single:
            updateSingleStack(using: currentAnswers)
        case .multiple:
            updateMultipleStack(using: currentAnswers)
        case .ranged:
            updateRangedStack(using: currentAnswers)
        }
    }
    
    func updateSingleStack(using answers: [Answer]) {
        singleStackView.isHidden = false
        singleButtom1.setTitle(answers[0].text, for: .normal)
        singleButtom2.setTitle(answers[1].text, for: .normal)
        singleButtom3.setTitle(answers[2].text, for: .normal)
        singleButtom4.setTitle(answers[3].text, for: .normal)
    }
    
    func updateMultipleStack(using answers: [Answer]) {
        multipleStackView.isHidden = false
        multiSwitch1.isOn = false
        multiSwitch2.isOn = false
        multiSwitch3.isOn = false
        multiSwitch4.isOn = false
        multiLabel1.text = answers[0].text
        multiLabel2.text = answers[1].text
        multiLabel3.text = answers[2].text
        multiLabel4.text = answers[3].text
    }
    
    func updateRangedStack(using answers: [Answer]) {
        rangedStackView.isHidden = false
        rangedSlider.setValue(0.5, animated: false)
        rangedLabel1.text = answers.first?.text
        rangedLabel2.text = answers.last?.text
    }
    
    func nextQuestion() {
        questionIndex += 1
        
        if questionIndex < questions.count {
            updateUI()
        } else {
            performSegue(withIdentifier: "Results", sender: nil)
        }
    }
    
    @IBSegueAction func showResults(_ coder: NSCoder) -> ResultsViewController? {
        return ResultsViewController(coder: coder, responses: answersChosen)
    }
}
