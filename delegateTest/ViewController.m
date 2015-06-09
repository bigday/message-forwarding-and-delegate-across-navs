//
//  ViewController.m
//  delegateTest
//
//  Created by SunChao on 15/6/6.
//  Copyright (c) 2015年 SunChao. All rights reserved.
//

#import "ViewController.h"
#import "DelViewController.h"

@interface ViewController ()<DelViewControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@">>>>>>>>>>>>>>>%@",self);

    
}
-(void)progress:(float)progress{
    NSLog(@">>>>>>>>>>>>>>>>>>>>>%f",progress);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
