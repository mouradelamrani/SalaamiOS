//
//  FadeView.swift
//  Salaam
//
//  Created by Andriy Shkinder on 26.12.2019.
//  Copyright © 2019 shkinder.andriy. All rights reserved.
//

import UIKit

class FadeView : UIView{
    
    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    private var gradientLayer: CAGradientLayer {
        return self.layer as! CAGradientLayer
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    
    private func commonInit() {
        gradientLayer.colors = [UIColor.white.cgColor, UIColor.clear.cgColor, UIColor.clear.cgColor,  UIColor.white.cgColor]
        gradientLayer.locations = [0.0, 0.1 , 0.9,  1.0]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1.0)
    }
}
