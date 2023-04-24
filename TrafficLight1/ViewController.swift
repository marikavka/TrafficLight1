//
//  ViewController.swift
//  TrafficLight1
//
//  Created by Мария Купчинская on 23.04.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private let cornerRadius: CGFloat = 75
    var currentState = Light.red
    enum Light {
                case red
                case yellow
                case green
            }
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
            currentState = .yellow
        case .yellow:
            redView.alpha = 0.2
            yellowView.alpha = 1
            currentState = .green
        case .green:
            yellowView.alpha = 0.2
            greenView.alpha = 1
            currentState = .red
        }
        
        if redView.alpha == 1 {
            startButton.setTitle("NEXT", for: .normal)
        }
    }
    
}
