//
//  VCOne.swift
//  MFPagingViewExample
//  GitHub: https://github.com/wwx1991/MFPagingView
//  Created by iOS on 2018/6/11.
//  Copyright © 2018年 GM. All rights reserved.
//

import UIKit

class VCOne: UIViewController {
    
    private lazy var pageTitleView: MFPageTitleView = {
        let config = MFPageTitleViewConfig()
//        config.titleColor = colorWithRGB(r: 43, g: 43, b: 43)
//        config.titleSelectedColor = colorWithRGB(r: 211, g: 0, b: 0)
//        config.titleFont = UIFont.systemFont(ofSize: 14, weight: .regular)
//        config.indicatorColor = colorWithRGB(r: 211, g: 0, b: 0)
//        config.showBottomSeparator = false
        let pageTitleView = MFPageTitleView(frame: CGRect(x: 0, y: navHeight, width: SCREEN_WIDTH, height: 41), titles: ["全部", "代付款", "待收货", "已完成", "已取消"], config: config)
        pageTitleView.pageTitleViewDelegate = self
        return pageTitleView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.view.addSubview(pageTitleView)
    }

}

extension VCOne: MFPageTitleViewDelegate {
    func selectedIndexInPageTitleView(pageTitleView: MFPageTitleView, selectedIndex: Int) {
        print(selectedIndex)
    }
}
