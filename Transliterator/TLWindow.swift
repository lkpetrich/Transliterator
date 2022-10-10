//
//  TLWindow.swift
//  Transliterator
//
//  Created by Loren Petrich on 10/10/22.
//

import Cocoa

class TLWindow: NSWindowController {
    
    var CharTrans = [String:String]()
    
    @IBOutlet var InputText: NSTextField!
    @IBOutlet var OutputText: NSTextField!
    
    override var windowNibName: String? {
        return "TLWindow"
    }
    
    @IBAction func Go(_ sender: Any?) {
        // Break down into characters for convenience
        // Change from Character to String for convenience
        let InChars = Array(InputText!.stringValue).map{String($0)}
        
        // Do the transliteration
        var OutChars = [String]()
        
        for c in InChars {
            let newc:String = CharTrans[c] ?? c
            OutChars.append(newc)
        }
        
        // Turn into a string again
        OutputText!.stringValue = OutChars.joined()
    }
}
