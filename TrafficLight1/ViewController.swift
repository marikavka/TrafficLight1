//
//  ViewController.swift
//  TrafficLight1
//
//  Created by Мария Купчинская on 23.04.2023.
//

import UIKit

enum Light {
    case red
    case yellow
    case green
    
}

final class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private let cornerRadius: CGFloat = 75
    var currentState = Light.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = cornerRadius
        yellowView.layer.cornerRadius = cornerRadius
        greenView.layer.cornerRadius = cornerRadius
        startButton.layer.cornerRadius = 15
    }
    
    @IBAction func startButtonTapped() {
        
        switch currentState {
        case .red:
            greenView.alpha = 0.2
            redView.alpha = 1
            yellowView.alpha = 0.2
            currentState = .yellow
        case .yellow:
            redView.alpha = 0.2
            yellowView.alpha = 1
            greenView.alpha = 0.2
            currentState = .green
        case .green:
            yellowView.alpha = 0.2
            greenView.alpha = 1
            redView.alpha = 0.2
            currentState = .red
        }
        
        if currentState == .yellow {
            startButton.setTitle("NEXT", for: .normal)
        }
    }
    
}
