//
//  ViewController.swift
//  FindAndReplace
//
//  Created by Vijay Parmar on 20/09/20.
//  Copyright © 2020 WD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var view_replace: UIView!
    @IBOutlet weak var view_find: UIView!
    @IBOutlet weak var txt_find: UITextField!
    
    @IBOutlet weak var txt_replace: UITextField!
    
    @IBOutlet weak var btn_find: UIButton!
    
    @IBOutlet weak var txtarea: UITextView!
    
    @IBOutlet weak var btn_replace: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view_find.clipsToBounds = true
        view_replace.clipsToBounds = true
        
        view_find.layer.cornerRadius=(view_find.frame.height/2)
        view_replace.layer.cornerRadius=(view_replace.frame.height/2)
        btn_find.layer.cornerRadius=(btn_find.frame.height/2)
        btn_replace.layer.cornerRadius=(btn_replace.frame.height/2)
        btn_find.layer.borderWidth=1
        btn_find.layer.borderColor=UIColor.white.cgColor
        btn_replace.layer.borderWidth=1
        btn_replace.layer.borderColor=UIColor.white.cgColor
    }

    @IBAction func find_click(_ sender: Any) {
    }
    
    @IBAction func replace_click(_ sender: Any) {
    }
    
}

