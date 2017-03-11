//
//  ContactUsViewController.swift
//  BusinessApplication
//
//  Created by Vladyslav Filippov on 02/08/2016.


import UIKit
import MapKit

class ContactUsViewController: UIViewController {
    
    @IBOutlet var mapView: MKMapView!
    
    var latitude = 51.501364
    var longitude = -0.1418899999999894
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        let span = MKCoordinateSpanMake(0.005, 0.005)
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: latitude, longitude: longitude), span: span)
        mapView.setRegion(region, animated: true)
        
        
        let pinLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let objectAnn = MKPointAnnotation()
        objectAnn.coordinate = pinLocation
        objectAnn.title = "Garden inc"
        objectAnn.subtitle = "123 Street, London, United Kingdom"
        self.mapView.addAnnotation(objectAnn)
        
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
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
    
    @IBAction func directions(_ sender: AnyObject) {
        
        UIApplication.shared.open(URL(string: "http://maps.apple.com/maps?daddr=\(latitude),\(longitude)")!)
        
        
        
    }
    
    @IBAction func callUs(_ sender: AnyObject) {
        
        UIApplication.shared.open(URL(string: "tel://123456789")!)
    }
    
    
    

}
