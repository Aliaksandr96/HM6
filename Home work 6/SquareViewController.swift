//
//  SquareViewController.swift
//  Home work 6
//
//  Created by Aliaksandr Hunko on 23/06/2022.
//

import UIKit

class SquareViewController: UIViewController {
    
    var SquareButton = UIButton()
    var Square = UILabel()
       
       override func viewDidLoad() {
           super.viewDidLoad()
           view.backgroundColor = .systemCyan
       }
       
       override func viewDidAppear(_ animated: Bool) {
           super.viewDidAppear(animated)
           
           // Button
           let widthBtn = 80
           let heightBtn = 80
           let xBtn = (Int(view.frame.width) / 2) - (widthBtn / 2)
           let yBtn = Int(view.frame.height) - heightBtn - (heightBtn / 2)
           
           SquareButton.frame = CGRect(x: xBtn , y: yBtn, width: widthBtn, height: heightBtn)
           SquareButton.backgroundColor = randomColor()
           SquareButton.addTarget(self, action: #selector(createFieldSquares), for: .touchUpInside)
           SquareButton.setTitle("Squares", for: .normal)
           
           view.addSubview(SquareButton)
           
       }
       
       @objc func createFieldSquares() {
           
           let columnsCount = 5
           
           let widthSquare = Int(view.frame.width) / columnsCount
           let heightSquare = widthSquare
        let rowsCount = Int((Int(view.frame.height) - (heightSquare * 5)) / heightSquare)
           
           var x = Int(view.frame.width)
           var y = Int(view.frame.height / 12)
           
           for _ in 1...(columnsCount * rowsCount) {
               
               
               
               let Square = UIView()
               Square.frame = CGRect(x: x, y: y, width: widthSquare, height: heightSquare)
    
               Square.backgroundColor = randomColor()
               
               
               x += (widthSquare + 3)
               
               if x >= Int(view.frame.width) {
                   x = 0
                   y += (heightSquare + 3)
               }
               view.addSubview(Square)
               
               
           }
           
       }
    func randomColor() -> UIColor {
        switch Int.random(in: 1...8) {
        case 1: return UIColor.red
        case 2: return UIColor.gray
        case 3: return UIColor.orange
        case 4: return UIColor.brown
        case 5: return UIColor.blue
        case 6: return UIColor.green
        case 7: return UIColor.purple
        case 8: return UIColor.yellow
        default: return UIColor.systemYellow
        }
    }
    
}
