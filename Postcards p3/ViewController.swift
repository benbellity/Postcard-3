//
//  ViewController.swift
//  Postcards p3
//
//  Created by BEN BELLITY on 30/09/2014.
//  Copyright (c) 2014 Famiis Online Apps LTD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblLabel: UILabel!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtMessage: UITextField!
    @IBOutlet weak var btnSendMail: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSendMail(sender: UIButton) {
        lblLabel.text = "From : \(txtName.text)\nMessage: \(txtMessage.text)"
        lblLabel.hidden = false
        lblLabel.textColor = UIColor.blueColor()
        
        txtMessage.text = ""
        txtMessage.resignFirstResponder()
        btnSendMail.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

