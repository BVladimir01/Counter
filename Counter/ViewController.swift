//
//  ViewController.swift
//  Counter
//
//  Created by Vladimir on 05.11.2024.
//

import UIKit

final class ViewController: UIViewController {

    private var countValue: Int = .zero {
        didSet {
            counterLabel.text = "Значение счетчика: \(countValue)"
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
    }

    @IBOutlet private weak var counterLabel: UILabel!
    @IBOutlet private weak var logText: UITextView!
    @IBOutlet private weak var increaseButton: UIButton!
    @IBOutlet private weak var decreaseButton: UIButton!
    @IBOutlet private weak var restartButton: UIButton!
    
    @IBAction private func increaseAction() {
        countValue += 1
        logText.text += "\n\(time): значение изменено на +1"
    }
    
    @IBAction private func decreaseAction() {
        if countValue == 0 {
            logText.text += "\n\(time): попытка уменьшить значение ниже 0"
        } else {
            countValue -= 1
            logText.text += "\n\(time): значение изменено на -1"
        }
    }
    
    @IBAction private func restartAction() {
        countValue = 0
        logText.text += "\n\(time): значение сброшено"
    }
}

