//  Fluorine.swift
//  Library
//
//  Created by Bas van Kuijck on 13-01-16.
//  Copyright © 2016 E-sites. All rights reserved.
//
import Foundation
import UIKit

public struct Point {
    public let start: CGPoint
    public let end: CGPoint

    public init(start: CGPoint = CGPoint.zero, end: CGPoint = CGPoint(x: 0, y: 1)) {
        self.start = start
        self.end = end
    }
}

open class View: UIView {
    open var colors: [UIColor] = [ UIColor.black, UIColor(white: 0, alpha: 0) ] {
        didSet {
            _redraw()
        }
    }

    open var point: Point = Point() {
        didSet {
            _redraw()
        }
    }

    open var locations: [CGFloat] = [0, 1] {
        didSet {
            _redraw()
        }
    }

    // MARK: - Constructor
    // ____________________________________________________________________________________________________________________

    public init() {
        super.init(frame: CGRect.zero)
        _init()
    }

    public override init(frame aFrame: CGRect) {
        super.init(frame: aFrame)
        _init()
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        _init()
    }

    private func _init() {
        self.isOpaque = false
        _redraw()

    }

    override open class var layerClass: AnyClass {
        return CAGradientLayer.self
    }

    // MARK: - Drawing
    // ____________________________________________________________________________________________________________________

    private func _redraw() {
        let layer = self.layer as! CAGradientLayer
        layer.colors = colors.map { $0.cgColor }
        layer.startPoint = point.start
        layer.endPoint = point.end
        layer.locations = locations as [NSNumber]?
        self.backgroundColor = UIColor.clear
    }
}

