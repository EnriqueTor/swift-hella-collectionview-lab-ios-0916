//
//  ViewController.swift
//  HellaCollectionCells
//
//  Created by Flatiron School on 10/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    //Outlets
    @IBOutlet weak var collection: UICollectionView!
    
    //Instances
    var fibonacci = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987]
    
    override func viewDidLoad() {
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1000
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collection.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath)
        
        if fibonacci.contains(indexPath.row) {
                cell.backgroundColor = UIColor.purple
            }
            else {
                cell.backgroundColor = UIColor.yellow
            }
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueDetail" {
        let dest = segue.destination as! HellaDetailViewController
            
            let indexPath = collection.indexPathsForSelectedItems
            let cell = sender as? HellaCollectionViewCell
            
            if let indexPath = indexPath {
            dest.detail = String(indexPath[0].row)
            dest.view.backgroundColor = cell?.backgroundColor
            }
        }
    }
    
//        if let cell = selectedPugIndex {
//            destinationViewController.detailLabel.text = self.pugs[selectPug]

        
//        var selectedPugIndex = self.tableView.indexPathForSelectedRow?.row
//        
//        if let selectPug = selectedPugIndex {
//            destinationViewController.detailLabel.text = self.pugs[selectPug]//            dest.fruit = fruits[indexPath.row]
    
}





