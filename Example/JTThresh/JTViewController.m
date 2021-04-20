//
//  JTViewController.m
//  JTThresh
//
//  Created by 17779725 on 04/19/2021.
//  Copyright (c) 2021 17779725. All rights reserved.
//

#import "JTViewController.h"
#import <JTThresh/JTThresh.h>

@interface JTViewController ()

@end

@implementation JTViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	/*
     1、先去处理 如何生成控件
     2、根绝客户端返回的JSON列表去处理 for循环去处理  然后处理相关问题
     3、
     */
    [[UIThresh makeThreshGenerator:@"UILabel"] mas_thresh:^(UIThresh * _Nonnull thresh) {
        thresh.backGroundColor([UIColor redColor]);
        thresh.frame(CGRectMake(50.0, 20.0, 100.0, 100.0));
        thresh.parent_view(self.view);
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
