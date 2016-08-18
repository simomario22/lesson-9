//
//  SecondViewController.swift
//  lesson 9 notifocation
//
//  Created by simo mario on 8/16/16.
//  Copyright © 2016 simo mario. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
let Ktext = "text"
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        registerNSNotification()

        // Do any additional setup after loading the view.
    }
    
    //hadi  hya func li ratsta9bal notificaton man viewcontrol  bi addobserver
    func registerNSNotification() {
        NSNotificationCenter.defaultCenter().addObserver(self, selector:
            #selector(SecondViewController.receivedNotification(_:)), name: "sendbuttontapped" , object: nil)
    }
    func receivedNotification(notification: NSNotification) {
        guard let userInfo = notification.userInfo,
            text = userInfo[Ktext] as? String else {return}
        label.text = text
    }
  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
