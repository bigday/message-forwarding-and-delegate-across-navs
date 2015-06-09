//
//  DelViewController.m
//  delegateTest
//
//  Created by SunChao on 15/6/6.
//  Copyright (c) 2015年 SunChao. All rights reserved.
//

#import "DelViewController.h"
#import "ViewController.h"
#import "person.h"

@interface DelViewController ()

@end

@implementation DelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UIStoryboard * storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    ViewController * mainVC = [storyBoard instantiateViewControllerWithIdentifier:@"MainVC"];
//    NSLog(@">>>>>>>>>>>>>>>%@",mainVC);
    UIWindow * window = [UIApplication sharedApplication].keyWindow;
    UINavigationController * nav = (UINavigationController*)window.rootViewController;
    NSArray * array = [nav viewControllers];
    UIViewController * controller = array[0];
    self.delegate = (id)controller;
}
- (IBAction)progressBtn:(id)sender {
   
    [self.delegate progress:2.5];
    
    Person *person = [[Person alloc] init];
    [person run];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
