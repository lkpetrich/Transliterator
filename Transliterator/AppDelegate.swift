//
//  AppDelegate.swift
//  Transliterator
//
//  Created by Loren Petrich on 3/29/20.
//  Copyright © 2020 Loren Petrich. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        newDocument(self)
    }
    
    // Create an app window
    @IBAction func newDocument(_ sender: Any?) {
        let wc = TLWindow()
        wc.showWindow(self)
    }
}

