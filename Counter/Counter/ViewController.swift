//
//  ViewController.swift
//  Counter
//
//  Created by Emil on 05.11.2024.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet private weak var scoreLabel: UILabel!
    @IBOutlet private weak var plusButton: UIButton!
    @IBOutlet private weak var minusButton: UIButton!
    @IBOutlet private weak var nullButton: UIButton!
    @IBOutlet private weak var historyText: UITextView!
     
    private var count = 0
    private var date = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        date.dateStyle = .long
        date.timeStyle = .medium
    }
    
    @IBAction private func scoreActionPlus(_ sender: Any) {
        count += 1
        scoreLabel.text = "Значение счетчика: \(count)"
        historyText.text += "\(date.string(from: Date())): значение изменено на +1 \n"
    }
    
    @IBAction private func scoreActionMinus(_ sender: Any) {
        if count <= 0 {
            scoreLabel.text = "Значение счетчика: 0"
            historyText.text += "\(date.string(from: Date())): попытка уменьшить значение счетчика ниже 0 \n"
        }
        else{
            count -= 1
            scoreLabel.text = "Значение счетчика: \(count)"
            historyText.text += "\(date.string(from: Date())): значение изменено на -1 \n"
        }
    }
    
    @IBAction private func nullAction(_ sender: Any) {
        count = 0
        scoreLabel.text = "Значение счетчика: \(count)"
        historyText.text += "\(date.string(from: Date())): значение сброшено \n"
    }
}

