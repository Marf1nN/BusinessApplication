//
//  EmailViewController.swift
//  BusinessApplication
//
//  Created by Vladyslav Filippov on 02/08/2016.



import UIKit
import MessageUI

class EmailViewController: UIViewController, UITextViewDelegate, MFMailComposeViewControllerDelegate {
    
    @IBOutlet var nameField: UITextField!
    @IBOutlet var emailField: UITextField!
    @IBOutlet var messageField: UITextView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        messageField.layer.cornerRadius = 5
        
        self.navigationItem.title = "Email Us"
        
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        
        if text == "\n" {
            
            textView.resignFirstResponder()
            return false
            
        }
        
        return true
        
        
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
    
    @IBAction func dismissKeyboard(_ sender: AnyObject) {
        
        self.resignFirstResponder()
        
    }
    
    @IBAction func sendEmail(_ sender: AnyObject) {
        
        let recipents = ["abc@123.com"]
        
        let mc: MFMailComposeViewController = MFMailComposeViewController()
        
        mc.mailComposeDelegate = self
        
        mc.setToRecipients(recipents)
        mc.setSubject(nameField.text! + " - My App")
        mc.setMessageBody("Name: \(nameField.text!) \n\nEmail: \(emailField.text!) \n\nMessage:\n\(messageField.text!)", isHTML: false)
        
        mc.navigationBar.tintColor = UIColor.white
        
        self.present(mc, animated: true, completion: nil)
        
        
        
    }
    
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    
    
    
    
    

}
