//
//  SocialViewController.swift
//  BusinessApplication
//
//  Created by Vladyslav Filippov on 03/08/2016.


import UIKit

class SocialViewController: UIViewController {
    
    @IBOutlet var webView: UIWebView!
    
    @IBOutlet var indicator: UIActivityIndicatorView!
    
    var sentData: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationItem.title = sentData
        
        
        if navigationItem.title == "Like us on Facebook" {
            
            let url = NSURL(string: "http://www.facebook.com")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
            
        }
        
        if navigationItem.title == "Follow us on Twitter" {
            
            let url = NSURL(string: "http://www.twitter.com")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
            
        }
        
        if navigationItem.title == "Add us on Google Plus" {
            
            let url = NSURL(string: "http://www.plus.google.com")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
            
        }
        
        if navigationItem.title == "Connect to us on LinkedIn" {
            
            let url = NSURL(string: "http://www.linkedin.com")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
            
        }
        
        if navigationItem.title == "Subscribe to us on YouTube" {
            
            let url = NSURL(string: "http://www.youtube.com")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
            
        }
        
        if navigationItem.title == "Check out our Website" {
            
            let url = NSURL(string: "http://www.google.com")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
            
        }
        
        
    }
    
    func webViewDidStartLoad(_ : UIWebView) {
        
        indicator.startAnimating()
        
    }
    
    func webViewDidFinishLoad(_ : UIWebView) {
        
        indicator.stopAnimating()
        
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
