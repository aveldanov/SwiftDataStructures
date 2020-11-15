//
//  ViewController.swift
//  PRACTICE_PROJECT
//
//  Created by Veldanov, Anton on 11/14/20.
//

import UIKit

class ViewController: UIViewController {
    
    let box: UIView = {
        let boxView = UIView()
        boxView.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        boxView.layer.cornerRadius = 12
        boxView.translatesAutoresizingMaskIntoConstraints = false
        boxView.clipsToBounds = true
        return boxView
    }()
    
    var initalCenterPoint = CGPoint()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(box)
        setupLayout()
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePan(_:)))
        box.addGestureRecognizer(panGesture)
    }
    
    @objc func handlePan(_ pan: UIPanGestureRecognizer){
        if pan.state == .began{
            self.initalCenterPoint = box.center
        }
        let translation = pan.translation(in: view)
        
        if pan.state != .cancelled{
            let newCenter = CGPoint(x: initalCenterPoint.x + translation.x, y: initalCenterPoint.y + translation.y)
            box.center = newCenter
        }else{
            box.center = initalCenterPoint
        }
        
    }
    
    func setupLayout(){
        NSLayoutConstraint.activate([
            box.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            box.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            box.widthAnchor.constraint(equalToConstant: 200),
            box.heightAnchor.constraint(equalToConstant: 200)
        ])
        
    }
    
  
}

