//
//  AppDelegate.swift
//  KeyClean
//
//  Created by Jonathan Borg on 3/4/16.
//  Copyright © 2016 x3m. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var window: NSWindow!


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        let frame: NSRect = NSScreen.mainScreen()!.frame
        
        self.window = NSWindow.init(contentRect: frame, styleMask: NSBorderlessWindowMask, backing: NSBackingStoreType.Buffered, `defer`: false)
        self.window.acceptsMouseMovedEvents = true
        self.window.opaque = false
        self.window.level = Int(CGShieldingWindowLevel())
        self.window.backgroundColor = NSColor(deviceRed: 0.0, green: 0.0, blue: 0.0, alpha: 0.7)
        let subview: OverlayView = OverlayView(frame: NSZeroRect)
        self.window.contentView = subview
        self.window.makeFirstResponder(subview)
        //    [self.window makeKeyAndOrderFront:NSApp];
        self.window.orderFrontRegardless()
    }


    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

