//
//  ViewController.swift
//  PRACTICE_PROJECT
//
//  Created by Veldanov, Anton on 11/14/20.
//

import UIKit

class ViewController: UIViewController {

    var anton : Person?
    var mac1 : MacBook?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    func createObject(){
        anton =  Person(name: "anton", macbook: nil)
        mac1 = MacBook(name: "mac1" , owner: nil)
    }


}

