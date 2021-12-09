//
//  BookingViewController.swift
//  Sample UI
//
//  Created by BS236 on 6/12/21.
//

import UIKit

class BookingViewController: UIViewController {
    @IBOutlet weak var carSelect: UITextField!
    @IBOutlet weak var personSelect: UITextField!
    @IBOutlet weak var startLocationSelect: UITextField!
    @IBOutlet weak var destinationSelect: UITextField!
    @IBOutlet weak var notes: UITextView!
    @IBOutlet weak var bookCar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Book A Car"
        // Do any additional setup after loading the view.
        
        
        bookCar.layer.cornerRadius = 3
        bookCar.layer.borderWidth = 0.85
        bookCar.layer.borderColor = UIColor.white.cgColor
        
        carSelect.attributedPlaceholder = NSAttributedString(
            string: "Select Car",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        
        personSelect.attributedPlaceholder = NSAttributedString(
            string: "Number of Persons",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        
        startLocationSelect.attributedPlaceholder = NSAttributedString(
            string: "Start Location",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        
        destinationSelect.attributedPlaceholder = NSAttributedString(
            string: "Destination",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        
        let borderColor = UIColor.white.cgColor

        notes.layer.borderColor = borderColor
        notes.layer.borderWidth = 0.85
        notes.layer.cornerRadius = 3.0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.carSelect.addBottomBorder()
        self.personSelect.addBottomBorder()
        self.startLocationSelect.addBottomBorder()
        self.destinationSelect.addBottomBorder()
    }

}
