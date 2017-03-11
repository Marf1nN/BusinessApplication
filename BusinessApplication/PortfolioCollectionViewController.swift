//
//  PortfolioCollectionViewController.swift
//  BusinessApplication
//
//  Created by Vladyslav Filippov on 02/08/2016.


import UIKit

private let reuseIdentifier = "Cell"

class PortfolioCollectionViewController: UICollectionViewController {
    
    var imageList = ["Portfolio1.jpg","Portfolio2.jpg","Portfolio3.jpg","Portfolio4.jpg","Portfolio5.jpg","Portfolio6.jpg","Portfolio1.jpg","Portfolio2.jpg","Portfolio3.jpg","Portfolio4.jpg","Portfolio5.jpg","Portfolio6.jpg","Portfolio1.jpg","Portfolio2.jpg","Portfolio3.jpg","Portfolio4.jpg","Portfolio5.jpg","Portfolio6.jpg"]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return imageList.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PortfolioCollectionViewCell
    
        // Configure the cell
        
        cell.cellImageView.image = UIImage(named: imageList[indexPath.row])
        
        cell.layer.borderWidth = 5
        cell.layer.borderColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.5).cgColor
        
    
        return cell
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionView, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        let screensize: CGRect = UIScreen.main.bounds
        var widthScreen = 0
        var heightScreen = 0
        
        
        ////iphone 3.5 to 4
        if screensize.width == 320 {
            
            widthScreen = 130
            heightScreen = 130
            
        }
        
        ////iphone 4.7
        if screensize.width == 375 {
            
            widthScreen = 160
            heightScreen = 160
            
        }
        
        ////iphone 5.5
        if screensize.width == 414 {
            
            widthScreen = 175
            heightScreen = 175
            
        }
        
        ////ipad mini and air
        if screensize.width == 768 {
            
            widthScreen = 230
            heightScreen = 230
            
        }
        
        ////ipad pro
        if screensize.width == 1024 {
            
            widthScreen = 230
            heightScreen = 230
            
        }
        
        
        return CGSize(width: widthScreen, height: heightScreen)
        
    }
    
    
    

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: AnyObject?) {
    
    }
    */

}
