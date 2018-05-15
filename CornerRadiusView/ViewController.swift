//
//  ViewController.swift
//  CornerRadiusView
//
//  Created by 鶴本賢太朗 on 2018/05/15.
//  Copyright © 2018年 Kentarou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var cornerView1: CornerRadiusView<UIImageView>!
    private var cornerView2: CornerRadiusView<UIButton>!
    private var cornerView3: CornerRadiusView<UILabel>!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cornerView1 = CornerRadiusView<UIImageView>()
        cornerView1.radiusView.image = UIImage(named: "ramen")
        cornerView1.cornerRadius = 10
        cornerView1.borderColor = UIColor.red
        cornerView1.borderWidth = 2
        cornerView1.maskedCorners = [.layerMinXMinYCorner]
        cornerView1.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        self.view.addSubview(cornerView1)
        
        cornerView2 = CornerRadiusView<UIButton>()
        cornerView2.radiusView.setImage(UIImage(named: "ramen"), for: .normal)
        cornerView2.cornerRadius = 10
        cornerView2.frame = CGRect(x: 200, y: 100, width: 100, height: 100)
        self.view.addSubview(cornerView2)
        
        cornerView3 = CornerRadiusView<UILabel>()
        cornerView3.cornerRadius = 20
        cornerView3.radiusView.text = "アイウエオ"
        cornerView3.frame = CGRect(x: 200, y: 200, width: 100, height: 100)
        self.view.addSubview(cornerView3)
        
    }
    @IBAction func onPush(_ sender: Any) {
        self.cornerView1.cornerRadius = 0
    }
}

