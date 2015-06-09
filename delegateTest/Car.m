//
//  Car.m
//  delegateTest
//
//  Created by YoFun on 15/6/9.
//  Copyright (c) 2015年 SunChao. All rights reserved.
//

#import "Car.h"

@implementation Car

-(void)run
{
    NSLog(@"Now we come from the method of forwardingTargetForSelector:(SEL)aSelector");
}

@end
