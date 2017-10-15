//
//  ViewController.m
//  ADDemo
//
//  Created by gongweiqiang on 2017/10/15.
//  Copyright © 2017年 gongweiqiang. All rights reserved.
//

#import "ViewController.h"
#import "UPAdBannerScrollView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setupViews];
    [self setupConstaint];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
}

- (void)setupViews{
    
    UPAdBannerScrollView *view = [[UPAdBannerScrollView alloc] initWithDataArr:@[@"01.jpg",@"02.jpg",@"03.jpg"]];
    [self.view addSubview:view];
    
    NSLayoutConstraint *top = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:20];
    NSLayoutConstraint *left = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:1.0 constant:0];
    NSLayoutConstraint *right = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:0];
    NSLayoutConstraint *height = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:480];
    [self.view addConstraints:@[top,left,right,height]];
}

- (void)setupConstaint{
    
    
}

@end
