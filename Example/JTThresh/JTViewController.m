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

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [[UIThresh makeThreshGenerator:@"UILabel"] mas_thresh:^(UIThresh * _Nonnull thresh) {
        thresh.backGroundColor([UIColor redColor]);
        thresh.frame(CGRectMake(0.0, 0.0, 100.0, 100.0));
        thresh.parent_view(self.view);
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
