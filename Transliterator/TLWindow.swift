//
//  TLWindow.swift
//  Transliterator
//
//  Created by Loren Petrich on 3/29/20.
//  Copyright © 2020 Loren Petrich. All rights reserved.
//

import Cocoa

class TLWindow: NSWindowController {
    
    @IBOutlet weak var InputText: NSTextField!
    @IBOutlet weak var OutputText: NSTextField!
    
    override var windowNibName: NSNib.Name? {
        return NSNib.Name("TLWindow")
    }
    
    @IBAction func Go(_ sender: Any?) {
        print("Going")
        OutputText!.stringValue = InputText!.stringValue
    }
}
