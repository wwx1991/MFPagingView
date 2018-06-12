//
//  VCTwo.swift
//  MFPagingViewExample
//  GitHub: https://github.com/wwx1991/MFPagingView
//  Created by iOS on 2018/6/12.
//  Copyright © 2018年 GM. All rights reserved.
//

import UIKit

class VCTwo: UIViewController {
    
    
    
    private lazy var pageTitleView: MFPageTitleView = {
        let config = MFPageTitleViewConfig()
        config.titleColor = colorWithRGB(r: 43, g: 43, b: 43)
        config.titleSelectedColor = colorWithRGB(r: 211, g: 0, b: 0)
        config.titleFont = UIFont.systemFont(ofSize: 14, weight: .regular)
        config.indicatorColor = colorWithRGB(r: 211, g: 0, b: 0)
        let pageTitleView = MFPageTitleView(frame: CGRect(x: 0, y: navHeight, width: SCREEN_WIDTH, height: 41), titles: ["关注", "推荐", "热点", "世界杯", "小视频", "科技", "时尚", "MFPagingView" ,"啦啦啦啦啦", "手机"], config: config)
        pageTitleView.pageTitleViewDelegate = self
        return pageTitleView
    }()
    
    private lazy var pageTitleContentView: MFPageContentView = {
        var childControllers = [UIViewController]()
        for _ in 0..<10 {
            let vc = UIViewController()
            let red: CGFloat = CGFloat(arc4random() % 256)
            let green: CGFloat = CGFloat(arc4random() % 256)
            let blue: CGFloat = CGFloat(arc4random() % 256)
            vc.view.backgroundColor = UIColor(red: red / 255.0, green: green / 255.0, blue: blue / 255.0, alpha: 1.0)
            childControllers.append(vc)
        }
        
        let pageTitleContentViewY = pageTitleView.frame.maxY
        let pageTitleContentView = MFPageContentView(frame: CGRect(x: 0, y: pageTitleContentViewY, width: SCREEN_WIDTH, height: SCREEN_HEIGHT-pageTitleContentViewY), parentVC: self, childVCs: childControllers)
        pageTitleContentView.pageContentViewDelegate = self
        return pageTitleContentView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        view.addSubview(pageTitleView)
        view.addSubview(pageTitleContentView)
    }

}

extension VCTwo: MFPageTitleViewDelegate, MFPageContentViewDelegate {
    func selectedIndexInPageTitleView(pageTitleView: MFPageTitleView, selectedIndex: Int) {
        self.pageTitleContentView.setPageContentViewCurrentIndex(currentIndex: selectedIndex)
    }
    func pageContentViewScroll(progress: CGFloat, originalIndex: Int, targetIndex: Int) {
        self.pageTitleView.setPageTitleView(progress: progress, originalIndex: originalIndex, targetIndex: targetIndex)
    }
}
