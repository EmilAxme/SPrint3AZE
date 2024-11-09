//
//  ViewController.swift
//  Counter
//
//  Created by Emil on 05.11.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var nullButton: UIButton!
    @IBOutlet weak var historyText: UITextView!
    
    var count = 0
    var date = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        date.dateStyle = .long
        date.timeStyle = .medium
    }
    
    @IBAction func scoreActionPlus(_ sender: Any) {
        count += 1
        scoreLabel.text = "Значение счетчика: \(count)"
        historyText.text += "\(date.string(from: Date())): значение изменено на +1 \n"
    }
    
    @IBAction func scoreActionMinus(_ sender: Any) {
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
    
    @IBAction func nullAction(_ sender: Any) {
        count = 0
        scoreLabel.text = "Значение счетчика: \(count)"
        historyText.text += "\(date.string(from: Date())): значение сброшено \n"
    }
}

