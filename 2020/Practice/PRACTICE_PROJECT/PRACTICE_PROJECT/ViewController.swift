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
        boxView.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        boxView.layer.cornerRadius = 25
        boxView.translatesAutoresizingMaskIntoConstraints = false
        boxView.clipsToBounds = true
        return boxView
    }()
    
    var initialPoint = CGPoint()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(box)
        setupLayout()
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

