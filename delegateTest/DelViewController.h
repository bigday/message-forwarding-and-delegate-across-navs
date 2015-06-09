//
//  DelViewController.h
//  delegateTest
//
//  Created by SunChao on 15/6/6.
//  Copyright (c) 2015年 SunChao. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DelViewControllerDelegate <NSObject>

-(void)progress:(float)progress;

@end

@interface DelViewController : UIViewController
@property(weak,nonatomic)id<DelViewControllerDelegate>delegate;
@end
