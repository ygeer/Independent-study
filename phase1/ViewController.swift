//
//  ViewController.swift
//  phase1
//
//  Created by Yoni Geer on 2/11/18.
//  Copyright © 2018 Yoni Geer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var items:[String] = []
    @IBOutlet weak var passwordtxt: UITextField!
    @IBOutlet weak var usernametxt: UITextField!
    
    
    @IBAction func login(_ sender: Any) {
        let usernameobject=itemsObject
        
        let passwordobject=UserDefaults.standard.object(forKey:
            "passwords")
        
        let users = [usernameobject] as? NSArray
        var userlist=users![0] as? NSArray
        
        let passwords=[passwordobject] as? NSArray
        var passwordlist=passwords![0] as? NSArray
        
       
        print(userlist)
        print(passwordlist)
        
        print("*********")
        var i=0;
        for user in userlist!{
            if user as? String == usernametxt.text{
                print("Found username")
                
                if passwordtxt.text==passwordlist![i] as! String{
                    print("password: Success")
                }
                else{
                    print("password: Failure")}
            }
            i=i+1
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

