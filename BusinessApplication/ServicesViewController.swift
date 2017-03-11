//
//  ServicesViewController.swift
//  BusinessApplication
//
//  Created by Vladyslav Filippov on 02/08/2016.


import UIKit

class ServicesViewController: UIViewController {
    
    @IBOutlet var detailImageView: UIImageView!
    @IBOutlet var detailTitle: UILabel!
    @IBOutlet var detailDescription: UITextView!
    
    var sentData1:String!
    var sentData2:String!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        detailTitle.text = sentData1
        
        self.navigationItem.title = sentData1
        
        detailImageView.image = UIImage(named: sentData2)
        
        
        if detailTitle.text == "Lawn Mowing" {
            
            detailDescription.text = "This is my lawn mowing service"
            
        }
        
        if detailTitle.text == "Pond Cleaning" {
            
            detailDescription.text = "This is my pond cleaning service"
            
        }
        
        if detailTitle.text == "Hedge Trimming" {
            
            detailDescription.text = "This is my hedge trimming service"
            
        }
        
        if detailTitle.text == "Flower Planting" {
            
            detailDescription.text = "This is my flower planting service"
            
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
