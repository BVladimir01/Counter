//
//  ViewController.swift
//  Counter
//
//  Created by Vladimir on 05.11.2024.
//

import UIKit

class ViewController: UIViewController {

    private var counts = 0 {
        didSet {
            counterLabel.text = "Значение счетчика: \(counts)"
        }
    }
    
    private var time: String {
        Date().formatted(date: .numeric, time: .standard)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        increaseButton.tintColor = .red
        decreaseButton.tintColor = .systemBlue
        restartButton.tintColor = .systemGray
        
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var counterLabel: UILabel!
    
    @IBOutlet weak var logText: UITextView!
    
    @IBOutlet weak var increaseButton: UIButton!
    
    @IBOutlet weak var decreaseButton: UIButton!
    
    @IBOutlet weak var restartButton: UIButton!
    
    @IBAction func increaseAction() {
        counts += 1
        logText.text += "\n\(time): значение изменено на +1"
    }
    
    @IBAction func decreaseAction() {
        if counts == 0 {
            logText.text += "\n\(time): попытка уменьшить значение ниже 0"
        } else {
            counts -= 1
            logText.text += "\n\(time): значение изменено на -1"
        }
    }
    
    @IBAction func restartAction() {
        counts = 0
        logText.text += "\n\(time): значение сброшено"
    }
}

