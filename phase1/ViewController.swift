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
       // print(usernameobject)
        
        let passwordobject=UserDefaults.standard.object(forKey:
            "item2")
        
        let users = [usernameobject] as? NSArray
        let passwords=[passwordobject]
        
       
        //print(users?.count)
        
        print("*********")
        for user in users!{
           // let tempstr=NSString(string:usernametxt.text!)
            print(users![0])
            print(users!.componentsJoined(by: "(") as Any)
            //print(users![0])
            
           // print(user)
            
        
           
            if((user as? String)?.lowercased()==usernametxt.text?.lowercased()){
                print("Found username")
                }
        }
    
        for password in passwords{
            //print(password)
            if(password as? String==passwordtxt.text){
                print("found password")
            }
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

