//
//  OpenQuicklyWindowController.swift
//  OpenQuickly
//
//  Created by Luka Kerr on 25/2/19.
//  Copyright © 2019 Luka Kerr. All rights reserved.
//

import Cocoa

open class OpenQuicklyWindowController: NSWindowController {

    private static let AUTOSAVE_NAME = "OpenQuicklyWindow"

    public let options: OpenQuicklyOptions

    private var windowIsVisible: Bool {
        return window?.isVisible ?? false
    }

    private let viewController: OpenQuicklyViewController

    public init(options: OpenQuicklyOptions) {
        self.options = options
        self.viewController = OpenQuicklyViewController(options: options)
        let window = OpenQuicklyWindow(contentViewController: viewController)

        super.init(window: window)

        if options.persistPosition {
            window.setFrameAutosaveName(OpenQuicklyWindowController.AUTOSAVE_NAME)
        }
    }

    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override open func close() {
        if windowIsVisible {
            super.close()
            options.delegate?.windowDidClose()
        }
    }

    public func toggle() {
        if windowIsVisible {
            close()
        } else {
            window?.makeKeyAndOrderFront(self)
            showWindow(self)
        }
    }
}
