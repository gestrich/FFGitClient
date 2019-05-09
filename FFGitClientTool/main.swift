//
//  main.swift
//  FFGitClientTool
//
//  Created by Bill Gestrich on 5/9/19.
//  Copyright © 2019 Bill Gestrich. All rights reserved.
//

import Foundation
import SwiftGit2

/*
 Trying to set SSH to work, I did:
 SwiftGit2 (master) $ echo 'export PATH="/usr/local/opt/curl-openssl/bin:$PATH"' >> ~/.bash_profile
 SwiftGit2 (master) $ export LDFLAGS="-L/usr/local/opt/openldap/lib"
 SwiftGit2 (master) $ export CPPFLAGS="-I/usr/local/opt/openldap/include"
 
 */

let URL: NSURL = NSURL(fileURLWithPath: "/Users/bill/dev/ios")
print("\(FileManager.default.fileExists(atPath: URL.path!))")
let repoResult = Repository.at(URL as URL)

print("Is Valid \(Repository.isValid(url: URL as URL))")

let repo = try! repoResult.get()

let remoteResult = repo.remote(named: "origin")

let remote = try! remoteResult.get()

let fetchresult = repo.fetch(remote)
let res = fetchresult.map { "The random number is: \($0)." }
print(res)
//if let result = try? fetchresult.get() {
//    print("result = \(result)")
//} else {
//    print("Error \(fetchresult.error)")
//}

