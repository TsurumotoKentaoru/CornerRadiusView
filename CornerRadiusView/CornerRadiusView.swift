//
//  CornerRadiusView.swift
//  CornerRadiusView
//
//  Created by 鶴本賢太朗 on 2018/05/15.
//  Copyright © 2018年 Kentarou. All rights reserved.
//

import UIKit

// 角丸にできるViewクラス
class CornerRadiusView<T>: UIView where T: UIView {
    // 角丸にしたいView
    internal let radiusView: T
    
    // 角丸具合
    internal var cornerRadius: CGFloat = 0 {
        didSet {
            self.setNeedsDisplay()
        }
    }
    // 角丸にしたい隅
    internal var maskedCorners: CACornerMask = [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMaxYCorner] {
        didSet {
            self.setNeedsDisplay()
        }
    }
    // 枠線の色
    internal var borderColor: UIColor = UIColor.white {
        didSet {
            self.setNeedsDisplay()
        }
    }
    // 枠線の幅
    internal var borderWidth: CGFloat = 0 {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    override init(frame: CGRect) {
        self.radiusView = T()
        super.init(frame: frame)
        self.addSubview(self.radiusView)
        self.backgroundColor = .clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.radiusView = T()
        super.init(coder: aDecoder)
        self.addSubview(self.radiusView)
        self.backgroundColor = .clear
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.radiusView.frame = self.bounds
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        self.layer.borderWidth = self.borderWidth
        self.layer.cornerRadius = self.cornerRadius
        self.layer.maskedCorners = self.maskedCorners
        self.layer.borderColor = self.borderColor.cgColor
        self.layer.masksToBounds = self.cornerRadius > 0
    }
}
