//
//  ViewController.swift
//  PRACTICE_PROJECT
//
//  Created by Veldanov, Anton on 11/14/20.
//

import UIKit

class ViewController: UIViewController {
    
    let box: UIView = {
        let box = UIView()
        box.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        box.layer.cornerRadius = 12
        box.translatesAutoresizingMaskIntoConstraints = false
        box.clipsToBounds = true
        return box
    }()

    var initialCenterPoint = CGPoint()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(gestHandler(_:)))
        setupLayout()
        
    }
 
    
    
    @objc func gestHandler(_ pan: UIPanGestureRecognizer){
        if pan.state == .began{
            initialCenterPoint = box.center
        }
        
        let translation = pan.translation(in: view)
        
        if pan.state != .cancelled{
            let newCenter = CGPoint(x: initialCenterPoint.x + translation.x, y: initialCenterPoint.y + translation.y)
            box.center = newCenter
            
        }else{
            box.center = initialCenterPoint
        }
        
    }
    
    
    func setupLayout(){
        NSLayoutConstraint.activate([
        
            box.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            box.centerYAnchor.constraint(equalTo: view.co)
        ])
        
    }

    
  
}

