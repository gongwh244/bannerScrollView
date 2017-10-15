//
//  UPAdBannerScrollView.h
//  ADDemo
//
//  Created by gongweiqiang on 2017/10/15.
//  Copyright © 2017年 gongweiqiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UPAdBannerScrollView : UIView

@property (nonatomic,strong) UIScrollView *scrollView;

@property (nonatomic,strong) UIPageControl *pageControl;


@property (nonatomic,strong) NSArray *dataArr;

- (instancetype)initWithDataArr:(NSArray *)arr;


@end
