//
//  ViewController.swift
//  課題5
//
//  Created by miyazawaryohei on 2020/08/11.
//  Copyright © 2020 miya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textField1: UITextField!
    @IBOutlet var textField2: UITextField!
    @IBOutlet var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calc(_ sender: Any) {
        
        if textField1.text == "" {
            let alert1 = UIAlertController(title: "課題5", message: "割られる数を入力してください", preferredStyle: .alert)
            let ok1 = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert1.addAction(ok1)
            present(alert1, animated: true, completion: nil)
            return
        }else if textField2.text == "" {
            let alert2 = UIAlertController(title: "課題5", message: "割る数を入力してください", preferredStyle: .alert)
            let ok2 = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert2.addAction(ok2)
            present(alert2, animated: true, completion: nil)
            return
        }
        
        
        let text1 = Float(textField1.text!) ?? 0
        let text2 = Float(textField2.text!) ?? 0
        
        
        if text2 == 0 {
            let alert3 = UIAlertController(title: "課題5", message: "割る数には0を入力しないでください", preferredStyle: .alert)
            let ok3 = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert3.addAction(ok3)
            present(alert3, animated: true, completion: nil)
            return
        }
        
        result.text = String(format: "%.5f", text1/text2)
        
    }
    
    
    
    
}

