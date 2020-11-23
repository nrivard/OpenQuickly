//
//  OpenQuicklyOptions.swift
//  OpenQuickly
//
//  Created by Luka Kerr on 25/2/19.
//  Copyright © 2019 Luka Kerr. All rights reserved.
//

import Cocoa

public struct OpenQuicklyOptions {

    public init(font: NSFont = .systemFont(ofSize: 20, weight: .light), radius: CGFloat = 8, width: CGFloat = 400, height: CGFloat = 44, matchesShown: Int = 6, rowHeight: CGFloat = 44, placeholder: String = "Search", persistMatches: Bool = false, persistPosition: Bool = true, edgeInsets: NSEdgeInsets = NSEdgeInsets(top: 10.0, left: 10.0, bottom: 10.0, right: 10.0), material: NSVisualEffectView.Material = .popover, delegate: OpenQuicklyDelegate? = nil) {
        self.font = font
        self.radius = radius
        self.width = width
        self.height = height
        self.matchesShown = matchesShown
        self.rowHeight = rowHeight
        self.placeholder = placeholder
        self.persistMatches = persistMatches
        self.persistPosition = persistPosition
        self.edgeInsets = edgeInsets
        self.material = material
        self.delegate = delegate
    }

    // MARK: - UI options

    /// The font to be used for the search field
    public var font: NSFont = .systemFont(ofSize: 20, weight: .light)

    /// The radius of the open quickly window
    public var radius: CGFloat = 8

    /// The width of the open quickly window
    public var width: CGFloat = 400

    /// The height of the open quickly window
    public var height: CGFloat = 44

    /// The maximum number of matches shown
    public var matchesShown: Int = 6

    /// The height of each row in the matches list
    public var rowHeight: CGFloat = 44

    /// The placeholder text to be used for the search field
    public var placeholder: String = "Search"

    /// Whether to persist the matches list when the
    /// open quickly window is closed and re-opened
    public var persistMatches: Bool = false

    /// Whether to persist the position of the open quickly
    /// window when it is closed and re-opened
    public var persistPosition: Bool = true

    /// The insets for the search field and matches list
    public var edgeInsets: NSEdgeInsets = NSEdgeInsets(top: 10.0, left: 10.0, bottom: 10.0, right: 10.0)

    /// The material effect to be used for the open quickly window
    public var material: NSVisualEffectView.Material = .popover

    // MARK: - Delegate

    /// An instance that conforms to the OpenQuicklyDelegate
    public weak var delegate: OpenQuicklyDelegate?


}
