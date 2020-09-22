//
//  ViewController.swift
//  FindAndReplace
//
//  Created by Vijay Parmar on 20/09/20.
//  Copyright © 2020 WD. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextViewDelegate {
    
   
    @IBOutlet weak var lbl_count: UILabel!
    @IBOutlet weak var view_replace: UIView!
    @IBOutlet weak var view_find: UIView!
    @IBOutlet weak var txt_find: UITextField!
    
    @IBOutlet weak var txt_replace: UITextField!
    
    @IBOutlet weak var btn_find: UIButton!
    
    @IBOutlet weak var txtarea: UITextView!
    
    @IBOutlet weak var btn_replace: UIButton!
    var count=255
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
       
        txtarea.delegate=self
        txtarea.text=""
        //lbl_count.text="\(count)"
        lbl_count.text=String(describing: count)
        //txtarea.isUserInteractionEnabled = false
        //txtarea.isEditable = false
    }

    func showMessage(message:String){
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func find_click(_ sender: Any) {
        
        //txtarea.text! = txtarea.text!.lowercased()
        
        if txtarea.text!.contains(txt_find.text!) {
             showMessage(message: "String Found")
        }
        
    }
    
    @IBAction func replace_click(_ sender: Any) {
        
        if txtarea.text!.contains(txt_find.text!) {
            
            let fullstring = txtarea.text!
            let replacetext = txt_replace.text!
            let searchtext = txt_find.text!
            txtarea.text = fullstring.replacingOccurrences(of: searchtext, with: replacetext)
            
        }else{
           showMessage(message: "String Not Found")
        }
        
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        //print(range)
        
        let newText = (textView.text as NSString).replacingCharacters(in: range, with: text)
        return newText.count <= 255
        
    }
    
    func textViewDidChange(_ textView: UITextView) {

            lbl_count.text =  "\(255 - txtarea.text.count)"
        
    }
    
    
}

