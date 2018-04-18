//
//  secondViewController.swift
//  phase1
//
//  Created by Yoni Geer on 2/11/18.
//  Copyright © 2018 Yoni Geer. All rights reserved.
//

import UIKit
let itemsObject=UserDefaults.standard.object(forKey:
    "items")
let passwordObject=UserDefaults.standard.object(forKey:
    "passwords")


class secondViewController: UIViewController{

    
    @IBOutlet weak var passwordtxt: UITextField!
    @IBOutlet weak var usernametxt: UITextField!
    
    @IBAction func reset(_ sender: Any) {
        var items:[String]
        var passwords:[String]
        items=[]
        passwords=[]
        
        UserDefaults.standard.set(items, forKey: "items")
        UserDefaults.standard.set(items, forKey: "passwords")
        
    }
    func alert(){
        let alert = UIAlertController(title: "Error", message: "Please Fill In Both Fields", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func create(_ sender: Any) {
        var items:[String]
        var passwords:[String]
        
        
        if(usernametxt.text=="" || passwordtxt.text==""){
            
        }
        else{
            if let tempitems=itemsObject as? [String]{
                if let temppasswords=passwordObject as? [String]{
                items=tempitems
                passwords=temppasswords
                items.append(usernametxt.text!)
                passwords.append(passwordtxt.text!)
                UserDefaults.standard.set(items, forKey: "items")
                UserDefaults.standard.set(passwords, forKey: "passwords")
                }
                else{
                    alert()
                }
            }
            else{
                items=[usernametxt.text!]
                passwords=[passwordtxt.text!]
               // print("empty array")
                UserDefaults.standard.set(items, forKey: "items")
                UserDefaults.standard.set(passwords, forKey: "passwords")
            }
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
