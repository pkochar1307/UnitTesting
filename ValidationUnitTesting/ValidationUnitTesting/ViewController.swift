//
//  ViewController.swift
//  ValidationUnitTesting
//
//  Created by MacMini03 on 07/10/19.
//  Copyright © 2019 MacMini03. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var Loginpage: UILabel!
    
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPass: UITextField!
    @IBOutlet weak var txtPhone: UITextField!
    
    
    
    @IBAction func btnSaveclick(_ sender: Any) {
        
        if (txtEmail.text?.isValidEmail)!{
            print("Valid Mail")
        }else{
            print("Invalid Email")
        }
        
        if (txtPass.text?.isPasswordValid)!{
             print("Valid Password")
        }else{
             print("Invalid Password")
    }
        
        if (txtPhone.text?.isPhoneNumber)!{
            print("Valid Phonenumber")
        }else{
            print("Invalid Phonenumber")
        }
        
        if (txtEmail.text?.isValidEmail)! {
            if (txtPass.text?.isPasswordValid)! {
        if (txtPass.text?.isPasswordValid)! {
            print (
            "Login successfully")
        }
            }
        }
        
    }
    }


    
    extension String{
        var isPhoneNumber: Bool{
            do{
                let detector = try NSDataDetector(types:
                NSTextCheckingResult.CheckingType.phoneNumber.rawValue)
                let matches = detector.matches(in: self, options: [], range: NSMakeRange(0,self.count))
                if let res = matches.first{
                    return res.resultType == .phoneNumber && res.range.location == 0 &&
                    res.range.length == self.count && self.count == 10
                }else {
                    return false
                }
            }catch {
               return false
            }
        }
        
        var isPasswordValid : Bool{
            
            let passwordTest = NSPredicate(format: "SELF MATCHES %@","\\b^(?=.*[0-9]+?)(?=.*[A-Z]+?)(?=.*[a-z]*?)(?=.*[!@#$%?]+?)[0-9A-z!@#$%?]{8,20}$\\b")
            return passwordTest.evaluate(with: self)
        }
        
        var isValidEmail: Bool{
            let emailRegEx = "[A-Z0-9a-z,_%+_]+@[A-Za-z0-9,-]+\\.[A-Za-z]{3}"
            
            let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
            return emailTest.evaluate(with: self)
        }


    }
