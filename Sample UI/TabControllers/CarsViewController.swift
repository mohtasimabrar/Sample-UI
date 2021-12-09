//
//  CarsViewController.swift
//  Sample UI
//
//  Created by BS236 on 6/12/21.
//

import UIKit

class CarsViewController: UICollectionViewController {
    
    let cars = ["Chevrolet Onix", "Chevrolet Spin", "Fiat Strada", "Ford Ka+", "Hyundai Tucson", "Tata Tiago", "Toyota Avanza", "Toyota Fortuner", "Toyota HiAce", "Toyota Hilux", "Toyota Innova", "Toyota Matrix"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Cars"
        // Do any additional setup after loading the view.
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cars.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Car", for: indexPath) as? CarCell else {
            fatalError("Unable to load")
        }
        
        let car = cars[indexPath.item]
        
        cell.name.text = car
        cell.imageView.image = UIImage(named: car)
        
        cell.layer.cornerRadius = 8.0
        
        return cell
    }
    
}
