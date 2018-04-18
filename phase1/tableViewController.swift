//
//  tableViewController.swift
//  phase1
//
//  Created by Yoni Geer on 3/28/18.
//  Copyright © 2018 Yoni Geer. All rights reserved.
//

import UIKit

class tableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var items:[String] = []
    
    @IBOutlet var table: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell" )
        cell.textLabel?.text=items[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle==UITableViewCellEditingStyle.delete{
            items.remove(at: indexPath.row)
        }
        table.reloadData()
        UserDefaults.standard.set(items, forKey: "items")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let itemsObject=UserDefaults.standard.object(forKey:
            "items")
        
        if let tempitems=itemsObject as? [String]{
            items=tempitems
        }
        table.reloadData()
        
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
