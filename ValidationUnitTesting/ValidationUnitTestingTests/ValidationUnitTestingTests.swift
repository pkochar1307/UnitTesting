//
//  ValidationUnitTestingTests.swift
//  ValidationUnitTestingTests
//
//  Created by MacMini03 on 07/10/19.
//  Copyright © 2019 MacMini03. All rights reserved.
//

import XCTest
@testable import ValidationUnitTesting

class ValidationUnitTestingTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func test_title_is_LoginPage(){
        let storyboard = UIStoryboard (name: "Main" , bundle: nil)
        let login = storyboard.instantiateInitialViewController() as! ViewController
        let _ = login.view
        
        XCTAssertEqual("LoginPage", login.Loginpage.text!)
        
    }
    
    func test_email_placeholder(){
        let storyboard = UIStoryboard (name: "Main" , bundle: nil)
        let login = storyboard.instantiateInitialViewController() as! ViewController
        let _ = login.view
        XCTAssertEqual("Email", login.txtEmail.placeholder!)
        
    }
    
    func test_password_placeholder(){
        let storyboard = UIStoryboard (name: "Main" , bundle: nil)
        let login = storyboard.instantiateInitialViewController() as! ViewController
        let _ = login.view
        XCTAssertEqual("Password", login.txtPass.placeholder!)
        
    }
    
    func test_phone_placeholder(){
        let storyboard = UIStoryboard (name: "Main" , bundle: nil)
        let login = storyboard.instantiateInitialViewController() as! ViewController
        let _ = login.view
        XCTAssertEqual("Phone", login.txtPhone.placeholder!)
        
    }
    
    //func test_is_emailValid(){
      //  let storyboard = UIStoryboard (name: "Main" , bundle: nil)
        //let login = storyboard.instantiateInitialViewController() as! ViewController
        //let _ = login.view
        
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    

    
}
