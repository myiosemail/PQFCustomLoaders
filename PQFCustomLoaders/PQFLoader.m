//
//  PQFLoader.m
//  PQFCustomLoadersDemo
//
//  Created by Pol Quintana on 6/3/15.
//  Copyright (c) 2015 Pol Quintana. All rights reserved.
//

#import "PQFLoader.h"
#import "PQFBouncingBalls.h"
#import "PQFBarsInCircle.h"
#import "PQFCirclesInTriangle.h"
#import "PQFBallDrop.h"

@implementation PQFLoader


#pragma mark - SHOW methods

+ (instancetype)showModalLoader
{
    return [self showModalLoader];
}

+ (instancetype)showLoaderOnView:(UIView *)view
{
    return nil;
}

- (void)showLoader {}


#pragma mark - CREATE methods

+ (instancetype)createModalLoader
{
    return [self createLoaderOnView:nil];
}

+ (instancetype)createLoaderOnView:(UIView *)view
{
    return nil;
}


#pragma mark - REMOVE methods

+ (void)removeAllLoadersOnView:(UIView *)view
{
    for (UIView *subview in view.subviews) {
        if ([subview isKindOfClass:[PQFLoader class]]) {
            [subview removeFromSuperview];
        }
    }
}

- (void)removeLoader {}


#pragma mark - Deprecated methods

- (instancetype)initLoaderOnView:(UIView *)view { return nil; }

- (void)show
{
    [self showLoader];
}

- (void)hide
{
    [self removeLoader];
}

- (void)remove
{
    [self removeLoader];
}


#pragma mark - Lazy inits

- (UILabel *)label
{
    if (!_label) {
        _label = [UILabel new];
    }
    return _label;
}

@end
