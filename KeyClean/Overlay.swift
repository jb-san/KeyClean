//
//  Overlay.swift
//  KeyClean
//
//  Created by Jonathan Borg on 3/4/16.
//  Copyright © 2016 x3m. All rights reserved.
//

import Cocoa

class OverlayView: NSView {
    override var acceptsFirstResponder: Bool { return true }
    
    override func becomeFirstResponder() -> Bool {
        return true
    }
    
    func canBecomeKeyWindow() -> Bool {
        return true
    }
    
    override init(frame: NSRect) {
        super.init(frame: frame)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillDraw() {
        NSCursor.hide()
    }

}