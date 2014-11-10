//
//  UIColor+VOKAL.h
//  Pods
//
//  Created by Isaac Greenspan on 11/10/14.
//  Copyright (c) 2014 VOKAL Interactive. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (VOKAL)

/**
 *  Generate a UIColor * based on a six-digit hexadecimal color and an alpha component.
 *
 *  @param hexColor The hexadecimal color (i.e., web representation), expressed as an integer (e.g., 0xA4C53F)
 *  @param alpha    The alpha component, expressed as a floating-point number between 0 (transparent) and 1 (solid)
 *
 *  @return The generated color
 */
+ (instancetype)vok_colorWithHexInt:(NSUInteger)hexColor alpha:(CGFloat)alpha;

/**
 *  Generate a UIColor * based on a six-digit hexadecimal color, with alpha 1.0 (solid).
 *
 *  @param hexColor The hexadecimal color (i.e., web representation), expressed as an integer (e.g., 0xA4C53F)
 *
 *  @return The generated color
 */
+ (instancetype)vok_colorWithHexInt:(NSUInteger)hexColor;

@end
