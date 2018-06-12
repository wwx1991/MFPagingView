# MFPagingView
Swift 标题滚动视图布局样式<br>
##效果图<br>
![image](https://github.com/wwx1991/MFPagingView/blob/master/MFPagingView.gif)<br>
##使用（详细使用，请参考Demo)
```
        ///pageTitleView
        let config = MFPageTitleViewConfig()
        let pageTitleView = MFPageTitleView(frame: CGRect(x: 0, y: navHeight, width: SCREEN_WIDTH, height: 41), titles: titles, config: config)
        pageTitleView.pageTitleViewDelegate = self
        self.view.addSubview(pageTitleView)
        
        ///pageContentView
        let pageTitleContentView = MFPageContentView(frame: CGRect(x: 0, y: pageTitleContentViewY, width: SCREEN_WIDTH, height: SCREEN_HEIGHT-pageTitleContentViewY), parentVC: self, childVCs: childControllers)
        pageTitleContentView.pageContentViewDelegate = self
```
* PageTitleViewDelegate
```
    func selectedIndexInPageTitleView(pageTitleView: MFPageTitleView, selectedIndex: Int) {
        self.pageContentView.setPageContentViewCurrentIndex(currentIndex: selectedIndex)
    }
* PageContentViewDelegate
    func pageContentViewScroll(progress: CGFloat, originalIndex: Int, targetIndex: Int) {
        self.pageTitleView.setPageTitleView(progress: progress, originalIndex: originalIndex, targetIndex: targetIndex)
    }
```
