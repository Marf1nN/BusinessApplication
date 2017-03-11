//
//  FirstViewController.swift
//  BusinessApplication
//
//  Created by Vladyslav Filippov on 02/08/2016.



import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func services(_ sender: AnyObject) {
        
        self.tabBarController?.selectedIndex = 2
    }
    
    @IBAction func portfolio(_ sender: AnyObject) {
        
        self.tabBarController?.selectedIndex = 3
    }
    
    @IBAction func aboutuUs(_ sender: AnyObject) {
        
        self.tabBarController?.selectedIndex = 1
    }

    @IBAction func contactUs(_ sender: AnyObject) {
        
        self.tabBarController?.selectedIndex = 4
    }

}

