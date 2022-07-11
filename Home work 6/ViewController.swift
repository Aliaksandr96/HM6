//
//  ViewController.swift
//  Home work 6
//
//  Created by Aliaksandr Hunko on 21/06/2022.
//

import UIKit

class ViewController: UIViewController {
    
    let catsViewBtn = UIButton()
    let squareViewBtn = UIButton()
    let moveCircleViewBtn = UIButton()
    let newGameBtn = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemCyan
        
        func createNewBtn(xBtn: CGFloat, yBtn: CGFloat, widthBtn: CGFloat, heightBtn: CGFloat, titleName: String) -> UIButton {
            
            let newBtn = UIButton()
            newBtn.frame = CGRect(x: xBtn, y: yBtn, width: widthBtn, height: heightBtn)
            newBtn.backgroundColor = .systemYellow
            newBtn.setTitle(titleName, for: .normal)
            newBtn.clipsToBounds = true
            newBtn.layer.cornerRadius = heightBtn / 2
            
            return newBtn
            
        }
        
        let widthNewBtn = view.frame.width / 2
        let heightNewBtn = view.frame.height / 12
        
        let xCatsViewBtn = view.frame.width / 2 - (widthNewBtn / 2)
        let yCatsViewBtn = view.frame.height / 2 - (heightNewBtn * 2)
        let catsViewBtn = createNewBtn(xBtn: xCatsViewBtn, yBtn: yCatsViewBtn, widthBtn: widthNewBtn, heightBtn: heightNewBtn, titleName: "Cat's Game")
        catsViewBtn.addTarget(self, action: #selector(showCatsViewController), for: .touchUpInside)
        view.addSubview(catsViewBtn)
        
        let xSquareViewBtn = view.frame.width / 2 - (widthNewBtn / 2)
        let ySquareViewBtn = view.frame.height / 2 - heightNewBtn + (heightNewBtn / 2)
        let squareViewBtn = createNewBtn(xBtn: xSquareViewBtn, yBtn: ySquareViewBtn, widthBtn: widthNewBtn, heightBtn: heightNewBtn, titleName: "Square Game")
        squareViewBtn.addTarget(self, action: #selector(showSquareViewController), for: .touchUpInside)
        view.addSubview(squareViewBtn)
        
        let xMoveCircleViewBtn = view.frame.width / 2 - (widthNewBtn / 2)
        let yMoveCircleViewBtn = view.frame.height / 2 + heightNewBtn
        let moveCircleViewBtn = createNewBtn(xBtn: xMoveCircleViewBtn, yBtn: yMoveCircleViewBtn, widthBtn: widthNewBtn, heightBtn: heightNewBtn, titleName: "Move Cirle Game")
        moveCircleViewBtn.addTarget(self, action: #selector(showMoveCircleViewController), for: .touchUpInside)
        view.addSubview(moveCircleViewBtn)
        
    }
    
    @objc func showCatsViewController() {
        
        let ViewController = CatViewController()
        navigationController?.pushViewController(ViewController, animated: true)
        
    }
    
    @objc func showSquareViewController() {
        
        let ViewController = SquareViewController()
        navigationController?.pushViewController(ViewController, animated: true)
        
    }
    @objc func showMoveCircleViewController() {
        
        let ViewController = MoveCircleViewController()
        navigationController?.pushViewController(ViewController, animated: true)
        
    }
}


