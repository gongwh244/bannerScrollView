//
//  UPAdBannerScrollView.m
//  ADDemo
//
//  Created by gongweiqiang on 2017/10/15.
//  Copyright © 2017年 gongweiqiang. All rights reserved.
//

#import "UPAdBannerScrollView.h"


@implementation UPAdBannerScrollView{
    NSInteger _pageCount;
}

- (instancetype)initWithDataArr:(NSArray *)arr{
    if (self = [super init]) {
        self.backgroundColor = UIColor.redColor;
        self.translatesAutoresizingMaskIntoConstraints = NO;
        [self setupViews];
        self.dataArr = arr;
        [self setScrollViewConstain];
        [self setImageConstainWithArr:arr];
    }
    return self;
}

- (void)setupViews{
    
    [self addSubview:self.scrollView];
//    [self addSubview:self.pageControl];
}



- (UIPageControl *)pageControl{
    if (!_pageControl) {
        _pageControl = [[UIPageControl alloc] init];
    }
    return _pageControl;
}

- (UIScrollView *)scrollView{
    
    if (!_scrollView) {
        
        _scrollView = [UIScrollView new];
        _scrollView.translatesAutoresizingMaskIntoConstraints = NO;
        _scrollView.backgroundColor = UIColor.grayColor;
        
        
    }
    return _scrollView;
}

- (void)setScrollViewConstain{
    
    NSLayoutConstraint *top = [NSLayoutConstraint constraintWithItem:self.scrollView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1.0 constant:0];
    NSLayoutConstraint *left = [NSLayoutConstraint constraintWithItem:self.scrollView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeading multiplier:1.0 constant:0];
    NSLayoutConstraint *right = [NSLayoutConstraint constraintWithItem:self.scrollView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:0];
    NSLayoutConstraint *bottom = [NSLayoutConstraint constraintWithItem:self.scrollView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0];
    [self addConstraints:@[top,left,right,bottom]];
}


- (void)setImageConstainWithArr:(NSArray *)arr{
    UIView *content = [UIView new];
    content.translatesAutoresizingMaskIntoConstraints = NO;
    content.backgroundColor = UIColor.blueColor;
    [self.scrollView addSubview:content];
    
    
    NSLayoutConstraint *top = [NSLayoutConstraint constraintWithItem:content attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.scrollView attribute:NSLayoutAttributeTop multiplier:1.0 constant:0];
    NSLayoutConstraint *left = [NSLayoutConstraint constraintWithItem:content attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.scrollView attribute:NSLayoutAttributeLeading multiplier:1.0 constant:0];
    NSLayoutConstraint *right = [NSLayoutConstraint constraintWithItem:content attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.scrollView attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:0];
    NSLayoutConstraint *bottom = [NSLayoutConstraint constraintWithItem:content attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.scrollView attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0];
//    [self.scrollView addConstraints:@[top,left,right,bottom]];
    top.active = YES;
    left.active = YES;
    right.active = YES;
    bottom.active = YES;
    
    UIView *lastView = nil;
    
    for (int i = 0; i < self.dataArr.count; i ++) {
        
        UIImageView *view = [[UIImageView alloc] init];
        view.translatesAutoresizingMaskIntoConstraints = NO;
        view.image = [UIImage imageNamed:self.dataArr[i]];
        [content addSubview:view];

        
        NSLayoutConstraint *lefts = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:lastView ?:content attribute:lastView ? NSLayoutAttributeTrailing : NSLayoutAttributeLeading  multiplier:1.0 constant:0];
        lefts.active = YES;
        NSLayoutConstraint *tops = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:content attribute:NSLayoutAttributeTop multiplier:1.0 constant:0];
        tops.active = YES;
        NSLayoutConstraint *widths = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self.scrollView attribute:NSLayoutAttributeWidth multiplier:1.0 constant:0];
        NSLayoutConstraint *hei = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.scrollView attribute:NSLayoutAttributeHeight multiplier:1.0 constant:0];
        widths.active = YES;
        hei.active = YES;
        
        lastView = view;
    }
    NSLayoutConstraint *rightss = [NSLayoutConstraint constraintWithItem:content attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:lastView attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:0];
    rightss.active = YES;
}

@end
