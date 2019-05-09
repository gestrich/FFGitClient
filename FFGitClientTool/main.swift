//
//  main.swift
//  FFGitClientTool
//
//  Created by Bill Gestrich on 5/9/19.
//  Copyright © 2019 Bill Gestrich. All rights reserved.
//

import Foundation
import SwiftGit2

let URL: NSURL = NSURL(fileURLWithPath: "/Users/bill/dev/ios")
print("\(FileManager.default.fileExists(atPath: URL.path!))")
let repoResult = Repository.at(URL as URL)

print("Is Valid \(Repository.isValid(url: URL as URL))")

//        let repo = try! repoResult.get()


