//
//  person.m
//  delegateTest
//
//  Created by YoFun on 15/6/9.
//  Copyright (c) 2015年 SunChao. All rights reserved.
//

#import "person.h"
#import "Car.h"
#import <objc/objc-runtime.h>

@implementation Person

void runner (id self, SEL _cmd)
{
    NSLog(@"%@, here is the implementation of person run : %s",self,sel_getName(_cmd));
}

+(BOOL)resolveInstanceMethod:(SEL)sel
{
//    if (sel == @selector(run)) {
//        class_addMethod(self, sel, (IMP)runner, "v@:");
//        return YES;
//    }
    return [super resolveInstanceMethod:sel];
}

//-(id)forwardingTargetForSelector:(SEL)aSelector
//{
//    return [[Car alloc] init];
//}

-(NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector
{
    NSString *sel = NSStringFromSelector(aSelector);
    if ([sel isEqualToString:@"run"]) {
        return [NSMethodSignature signatureWithObjCTypes:"v@:"];
    }
    return [super methodSignatureForSelector:aSelector];
}

-(void)forwardInvocation:(NSInvocation *)anInvocation
{
    SEL selector = [anInvocation selector];
    Car *car = [[Car alloc] init];
    if ([car respondsToSelector:selector]) {
        [anInvocation invokeWithTarget:car];
    }
}

@end
