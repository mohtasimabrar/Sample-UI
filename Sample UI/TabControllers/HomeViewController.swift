//
//  HomeViewController.swift
//  Sample UI
//
//  Created by BS236 on 6/12/21.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var auth = false
    let cars = ["Chevrolet Spin", "Fiat Strada", "Ford Ka+", "Hyundai Tucson", "Tata Tiago"]
    let destinations = ["Chittagong", "Sylhet", "Dhaka", "Barishal"]
    let holidays = [["Victory Day of Bangladesh", "16 December 2021"], ["Weekend", "18-19 December 2021"], ["Christmas", "25 December 2021"], ["Weekend", "25-26 December 2021"]]
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var destinationCollection: UICollectionView!
    @IBOutlet weak var pageView: UIPageControl!
    @IBOutlet weak var holidayTableView: UITableView!
    
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Home"
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg2")!)
        collectionView.backgroundColor = UIColor.clear.withAlphaComponent(0)
        
        pageView.numberOfPages = destinations.count
        pageView.currentPage = 0
        
        holidayTableView.layer.cornerRadius = 8.0
        
        
        DispatchQueue.main.async {
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(self.changeSlider), userInfo: nil, repeats: true)
        }
        
    }
    
    @objc func changeSlider() {
        if counter < self.destinations.count {
            let index = IndexPath(item: counter, section: 0)
            self.destinationCollection.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
            pageView.currentPage = counter
            counter += 1
        } else {
            counter = 0
            let index = IndexPath(item: counter, section: 0)
            self.destinationCollection.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
            pageView.currentPage = counter
            counter = 1
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if (!auth) {
            auth = true
            authCheck()
        }
    }
    
    private func authCheck() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "authNav")
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionView {
            return cars.count
        } else if collectionView == self.destinationCollection {
            return destinations.count
        } else {
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.collectionView {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DealCell", for: indexPath) as? TopDealViewCell else {
                fatalError("Unable to load")
            }
            
            let car = cars[indexPath.row]
            
            cell.button.layer.cornerRadius = 3
            cell.button.layer.borderWidth = 0.85
            cell.button.layer.borderColor = UIColor.white.cgColor
        
            cell.name.text = car
            cell.price.text = "$5/hr"
            cell.imageView.image = UIImage(named: car)
            cell.layer.cornerRadius = 8.0
            
            return cell
        } else if collectionView == self.destinationCollection {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DestinationCell", for: indexPath) as? DestinationViewCell else {
                fatalError("Unable to load")
            }
            
            let destination = destinations[indexPath.row]

        
            cell.place.text = destination
            cell.tagLine.text = "Lorem Ipsum Blah Blah"
            cell.image.image = UIImage(named: destination)
            cell.layer.cornerRadius = 8.0
            
            return cell
        } else {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DealCell", for: indexPath) as? TopDealViewCell else {
                fatalError("Unable to load")
            }
            
            let car = cars[indexPath.row]
            
            cell.button.layer.cornerRadius = 3
            cell.button.layer.borderWidth = 0.85
            cell.button.layer.borderColor = UIColor.white.cgColor
        
            cell.name.text = car
            cell.price.text = "$5/hr"
            cell.imageView.image = UIImage(named: car)
            cell.layer.cornerRadius = 8.0
            
            return cell
        }
    }
    
}


extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.destinationCollection {
            return CGSize(width: UIScreen.main.bounds.size.width * 0.9, height: 180)
        } else if collectionView == self.collectionView {
            return CGSize(width: 150, height: 200)
        } else {
            return CGSize(width: 100, height: 100)
        }
    }
}


extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return holidays.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Reuse or create a cell.
        let cell = tableView.dequeueReusableCell(withIdentifier: "holidayCell", for: indexPath)

        // For a standard cell, use the UITableViewCell properties.
        let holiday = holidays[indexPath.row]
        cell.textLabel!.text = holiday[0]
        cell.detailTextLabel!.text = holiday[1]
        
        return cell
    }
}
