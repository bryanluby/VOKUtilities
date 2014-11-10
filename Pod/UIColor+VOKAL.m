//
//  UIColor+VOKAL.m
//  Pods
//
//  Created by Isaac Greenspan on 11/10/14.
//  Copyright (c) 2014 VOKAL Interactive. All rights reserved.
//

#import "UIColor+VOKAL.h"

@implementation UIColor (VOKAL)

+ (instancetype)vok_colorWithHexInt:(NSUInteger)hexColor alpha:(CGFloat)alpha
{
    CGFloat red = ((CGFloat)(hexColor >> 16) / (CGFloat)0xFF);
    CGFloat green = ((CGFloat)((hexColor >> 8) & 0xFF) / (CGFloat)0xFF);
    CGFloat blue = ((CGFloat)(hexColor & 0xFF) / (CGFloat)0xFF);
    return [self colorWithRed:red green:green blue:blue alpha:alpha];
}

+ (instancetype)vok_colorWithHexInt:(NSUInteger)hexColor
{
    return [self vok_colorWithHexInt:hexColor alpha:1.0f];
}

@end
