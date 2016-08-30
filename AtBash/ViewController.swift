//
//  ViewController.swift
//  AtBash
//
//  Created by Gregory Weiss on 8/29/16.
//  Copyright © 2016 Gregory Weiss. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate
{
    
    var aCryptoBrain = CryptoLetters()
    
    @IBOutlet weak var plainTextView: UITextView!
    
    @IBOutlet weak var CipherTextView: UITextView!
    
   
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func encodeTapped(sender: UIButton)
    {
       // plainTextView.delegate = self
        plainTextView.resignFirstResponder()
        
      let myString = aCryptoBrain.encodeText(plainTextView.text)
        
      //  print(myString)
        CipherTextView.text = myString
    }
    
    @IBAction func decodeTapped(sender: UIButton)
    {
        CipherTextView.resignFirstResponder()
        let newString = aCryptoBrain.decodeText(CipherTextView.text)
        plainTextView.text = newString
        
    }
    
    
    @IBAction func clearAllTapped(sender: UIButton)
    {
        plainTextView.text = ""
        CipherTextView.text = ""
    }
  

}

