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

class secondViewController: UIViewController {

    @IBOutlet weak var passwordtxt: UITextField!
    @IBOutlet weak var usernametxt: UITextField!
    @IBAction func create(_ sender: Any) {
        var items:[String]
        
        
        if let tempitems=itemsObject as? [String]{
            items=tempitems
            items.append(usernametxt.text!)
        }
        else{
            items=[usernametxt.text!]
            print("empty array")
        }
        //items=[]
        UserDefaults.standard.set(items, forKey: "items")
        //print(items)
        
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
