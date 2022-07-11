//
//  moveCircleVIewController.swift
//  Home work 6
//
//  Created by Aliaksandr Hunko on 23/06/2022.
//

import Foundation
import UIKit

public final class MoveCircleViewController: UIViewController {

    let ball = UIView()
    let ballArea = UIView()
    
       
       // Creating coordinates of ball
    var xBall = 0
    var yBall = 0
    let widthBall = 80
    let heightBall = 80
       // Ball  step
    let step = 30
       
       // Movement buttons
    let upButton: UIButton = UIButton()
    let downButton: UIButton = UIButton()
    let leftButton: UIButton = UIButton()
    let rightButton: UIButton = UIButton()
    
    
       
    public override func viewDidLoad() {
           super.viewDidLoad()
        view.backgroundColor = .systemCyan
       }
       
       public override func viewDidAppear(_ animated: Bool) {
           super.viewDidAppear(animated)
           
           // Width and heigth controll buttons
    let widthBtn = 80
    let heightBtn = 80
           // Create area for ball
    let widthArea = Int(view.bounds.width)
    let heightArea = Int(view.bounds.height) - (heightBtn * 5)
           // ball area .ball params
           ballArea.frame = CGRect(x: 0, y: 0, width: widthArea, height: heightArea)
           ballArea.backgroundColor = randomColor()
           view.addSubview(ballArea)
           xBall = (Int(ballArea.bounds.width) / 2) - (widthBall / 2)
           yBall = (Int(ballArea.bounds.height) / 2) - (heightBall / 2)
           ball.frame = CGRect(x: xBall, y: yBall, width: widthBall, height: heightBall)
           ball.backgroundColor = randomColor()
           ball.layer.cornerRadius = ball.bounds.height / 2
           ballArea.addSubview(ball)
           
           // button  params
    let xUpBtn = (Int(view.bounds.width) / 2) - (widthBtn / 2)
    let yUpBtn = Int(view.bounds.height) - (heightBtn * 4)
           upButton.frame = CGRect(x: xUpBtn, y: yUpBtn, width: widthBtn, height: heightBtn)
           upButton.backgroundColor = .gray
           upButton.layer.cornerRadius = upButton.bounds.height / 2
           upButton.addTarget(self, action: #selector(moveUp), for: .touchUpInside)
           upButton.setTitle("UP", for: .normal)
           view.addSubview(upButton)
    let xDownBtn = (Int(view.bounds.width) / 2) - (widthBtn / 2)
    let yDownBtn = Int(view.bounds.height) - (heightBtn * 2)
           downButton.frame = CGRect(x: xDownBtn, y: yDownBtn, width: widthBtn, height: heightBtn)
           downButton.backgroundColor = .gray
           downButton.layer.cornerRadius = downButton.bounds.height / 2
           downButton.addTarget(self, action: #selector(moveDown), for: .touchUpInside)
           downButton.setTitle("DOWN", for: .normal)
           view.addSubview(downButton)
    let xLeftBtn = (Int(view.bounds.width) / 2) - widthBtn - (widthBtn / 2)
    let yLeftBtn = Int(view.bounds.height) - (heightBtn * 3)
           leftButton.frame = CGRect(x: xLeftBtn, y: yLeftBtn, width: widthBtn, height: heightBtn)
           leftButton.backgroundColor = .gray
           leftButton.layer.cornerRadius = leftButton.bounds.height / 2
           leftButton.addTarget(self, action: #selector(moveLeft), for: .touchUpInside)
           leftButton.setTitle("LEFT", for: .normal)
           view.addSubview(leftButton)
    let xRightBtn = (Int(view.bounds.width) / 2) + widthBtn - (widthBtn / 2)
    let yRightBtn = Int(view.bounds.height) - (heightBtn * 3)
           rightButton.frame = CGRect(x: xRightBtn, y: yRightBtn, width: widthBtn, height: heightBtn)
           rightButton.backgroundColor = .gray
           rightButton.layer.cornerRadius = rightButton.bounds.height / 2
           rightButton.addTarget(self, action: #selector(moveRight), for: .touchUpInside)
           rightButton.setTitle("RIGHT", for: .normal)
           view.addSubview(rightButton)
       }
       
       // ball movement
       @objc func moveUp() {
           if yBall > (Int(ballArea.frame.minY) + step) {
               yBall -= step
           }
           ball.frame = CGRect(x: xBall, y: yBall, width: widthBall, height: heightBall)
       }
       @objc func moveDown() {
           if yBall < ((Int(ballArea.frame.maxY) - heightBall) - step)  {
               yBall += step
           }
           ball.frame = CGRect(x: xBall, y: yBall, width: widthBall, height: heightBall)
                  }
                  @objc func moveLeft() {
                      if xBall > (Int(ballArea.frame.minX) + step)  {
                          xBall -= step
                      }
                      ball.frame = CGRect(x: xBall, y: yBall, width: widthBall, height: heightBall)
                  }
                  @objc func moveRight() {
                      if xBall < ((Int(ballArea.frame.maxX) - heightBall) - step)  {
                          xBall += step
                      }
                      ball.frame = CGRect(x: xBall, y: yBall, width: widthBall, height: heightBall)
                  }
               // random color
               func randomColor() -> UIColor {
                   switch Int.random(in: 1...8) {
                   case 1: return UIColor.red
                   case 2: return UIColor.systemCyan
                   case 3: return UIColor.orange
                   case 4: return UIColor.brown
                   case 5: return UIColor.blue
                   case 6: return UIColor.systemFill
                   case 7: return UIColor.systemMint
                   case 8: return UIColor.yellow
                   default: return UIColor.systemRed
                   }
               }
              }
