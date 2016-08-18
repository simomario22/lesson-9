//
//  ViewController.swift
//  lesson 9 notifocation
//
//  Created by simo mario on 8/16/16.
//  Copyright © 2016 simo mario. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    let ktext = "text"

    @IBOutlet weak var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadTabs()

    }
    // hna  kader  dakchi  libghiti  had outlit  derou  fhad  lhala darna  bli text likun  f filde kisawi text  man ba3d  kanzedou  smauay func f nsnotification  bach  lblasa  lifiha  listi9bal  ta3rafha
    // hona  ista3malna dectinori  wahya ktext a3taynaha  9ima  hya  text wa text  hya text  ladi ypjtan f label 
    @IBAction func sendbuttontapped(sender: AnyObject) {
        guard let text = textfield.text else {return}
        NSNotificationCenter.defaultCenter().postNotificationName("sendbuttontapped", object: nil, userInfo: [ktext:text])
    }
    
    func loadTabs () {
        guard let ViewController = self.tabBarController?.viewControllers else {return }
        for vc in ViewController {
            if vc != self {
                let _ = vc.view
            }
        }
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }


}

