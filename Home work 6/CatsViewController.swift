//
//  CatsViewController.swift
//  Home work 6
//
//  Created by Aliaksandr Hunko on 23/06/2022.
//

import Foundation
import UIKit

public final class CatViewController: UIViewController {
   
        let circle = UIButton()
        
    public override func viewDidLoad() {
            super.viewDidLoad()
            
            title = "Random Circle Game"
            view.backgroundColor = .systemCyan
            
            circle.frame = CGRect(x: 0, y: 0, width: 60, height: 60)
        circle.backgroundColor = randomColor()
            circle.center = view.center
            circle.clipsToBounds = true
            circle.layer.cornerRadius = 30
            circle.addTarget(self, action: #selector(tapCircle(sender: )), for: .touchUpInside)
            view.addSubview(circle)
             
        }

        @objc func tapCircle(sender: UIButton){
            
        
            let xCircle = CGFloat.random(in: (view.frame.minX + 30) ..< (view.frame.maxX - 30))
            let yCircle = CGFloat.random(in: (view.frame.minY + 60) ..< (view.frame.maxY - 30))
            sender.center = CGPoint(x: xCircle, y: yCircle)
            
        }
        
    }
    func randomColor() -> UIColor {
        switch Int.random(in: 1...6) {
        case 1: return UIColor.red
        case 2: return UIColor.gray
        case 3: return UIColor.orange
        case 4: return UIColor.brown
        case 5: return UIColor.blue
        case 6: return UIColor.yellow
        default: return UIColor.systemYellow
        }
    }

