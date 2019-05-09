//
//  ViewController.swift
//  FFGitClient
//
//  Created by Bill Gestrich on 5/9/19.
//  Copyright © 2019 Bill Gestrich. All rights reserved.
//

import Cocoa
import SwiftGit2

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        testGitSwit()
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    func testGitSwit(){
        
        let URL: NSURL = NSURL(fileURLWithPath: "/Users/bill/dev/ios")
        print("\(FileManager.default.fileExists(atPath: URL.path!))")
        let repoResult = Repository.at(URL as URL)
        
        print("Is Valid \(Repository.isValid(url: URL as URL))")
        
//        let repo = try! repoResult.get()
    }


}

