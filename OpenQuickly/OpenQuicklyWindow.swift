//
//  OpenQuicklyWindow.swift
//  OpenQuickly
//
//  Created by Luka Kerr on 25/2/19.
//  Copyright © 2019 Luka Kerr. All rights reserved.
//

import Cocoa

class OpenQuicklyWindow: NSWindow, NSWindowDelegate {
    
    override init(
        contentRect: NSRect,
        styleMask style: NSWindow.StyleMask,
        backing backingStoreType: NSWindow.BackingStoreType,
        defer flag: Bool
    ) {
        super.init(contentRect: contentRect, styleMask: [.borderless, .fullSizeContentView], backing: backingStoreType, defer: flag)
        
        self.titleVisibility = .hidden
        self.backgroundColor = .clear
        self.isOpaque = false
        self.isMovableByWindowBackground = true
        self.delegate = self
    }
    
    func windowDidResignKey(_ notification: Notification) {
        windowController?.close()
    }
    
    override var canBecomeKey: Bool {
        return true
    }
}
