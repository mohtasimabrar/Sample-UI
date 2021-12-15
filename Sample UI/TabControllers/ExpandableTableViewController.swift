//
//  ExpandableTableViewController.swift
//  Sample UI
//
//  Created by BS236 on 14/12/21.
//

import UIKit

class ExpandableTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    var data = [
        Expandable(title: "Sedan", options: ["Chevrolet Onix", "Ford Ka+", "Toyota Matrix"]),
        Expandable(title: "SUV", options: ["Chevrolet Spin", "Fiat Strada", "Hyundai Tucson", "Tata Tiago", "Toyota Avanza", "Toyota Fortuner", "Toyota Innova"]),
        Expandable(title: "Pick Up Truck", options: ["Toyota Hilux"]),
        Expandable(title: "Microbus", options: ["Toyota HiAce"])
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        title = "Cars"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "View All", style: .plain, target: self, action: #selector(viewAll))
        tableView.backgroundColor = UIColor.clear
    }
    
    
    @objc func viewAll() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "allCars")
        navigationController?.pushViewController(vc, animated: true)
    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (data[section].isOpen) {
            return data[section].options.count + 1
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (indexPath.row == 0) {
            return 50
        } else {
            return 120
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
//        cell.textLabel?.textColor = UIColor.white
        
        
        if (indexPath.row == 0) {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ExpandableCellHeader", for: indexPath)
            cell.textLabel?.text = data[indexPath.section].title
            return cell
            
        } else {
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ExpandableCell", for: indexPath) as? ExpandableCell else {
                fatalError()
            }
            cell.picture.image = UIImage(named: data[indexPath.section].options[indexPath.row-1])
            cell.name.text = data[indexPath.section].options[indexPath.row-1]
            cell.btn.layer.cornerRadius = 3.0
            return cell
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if (indexPath.row == 0) {
            data[indexPath.section].isOpen = !data[indexPath.section].isOpen
            tableView.reloadSections([indexPath.section], with: .fade)
        } else {
            
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath)
    {
        let cornerRadius = 12
        var corners: UIRectCorner = []

        if indexPath.row == 0
        {
            corners.update(with: .topLeft)
            corners.update(with: .topRight)
        }

        if indexPath.row == tableView.numberOfRows(inSection: indexPath.section) - 1
        {
            corners.update(with: .bottomLeft)
            corners.update(with: .bottomRight)
        }

        let maskLayer = CAShapeLayer()
        maskLayer.path = UIBezierPath(roundedRect: cell.bounds,
                                      byRoundingCorners: corners,
                                      cornerRadii: CGSize(width: cornerRadius, height: cornerRadius)).cgPath
        cell.layer.mask = maskLayer
    }
}
