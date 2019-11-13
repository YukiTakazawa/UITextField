//
//  ViewController.swift
//  UITextField
//
//  Created by kiyolab01 on 2019/11/13.
//  Copyright © 2019 takazawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTextField.delegate = self
        myTextField.attributedPlaceholder = NSAttributedString(string: "文字を入力してください",attributes: [NSAttributedString.Key.foregroundColor : UIColor.white] )
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //returnキーを押した時にキーボードを閉じる
        textField.resignFirstResponder()
        return true
    }
    @IBAction func EraseCharacters(_ sender: Any) {
        myTextField.endEditing(true)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

