//
//  VOKUtilitiesTests.m
//  VOKUtilitiesTests
//
//  Created by Isaac Greenspan on 11/10/2014.
//  Copyright (c) 2014 VOKAL Interactive. All rights reserved.
//

#import <XCTest/XCTest.h>

#import <UIColor+VOKAL.h>

@interface UIColor_VOKAL_Tests : XCTestCase

@end

@implementation UIColor_VOKAL_Tests

- (void)testColorWithHexIntWhite
{
    UIColor *white = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    XCTAssertEqualObjects([UIColor vok_colorWithHexInt:0xFFFFFF alpha:1.0], white);
    XCTAssertEqualObjects([UIColor vok_colorWithHexInt:0xFFFFFF], white);
}

- (void)testColorWithHexIntBlack
{
    UIColor *black = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    XCTAssertEqualObjects([UIColor vok_colorWithHexInt:0x000000 alpha:1.0], black);
    XCTAssertEqualObjects([UIColor vok_colorWithHexInt:0x000000], black);
    XCTAssertEqualObjects([UIColor vok_colorWithHexInt:0x0], black);
}

- (void)testColorWithHexIntVokalColor
{
    UIColor *vokalColor = [UIColor colorWithRed:164.0/255.0 green:197.0/255.0 blue:63.0/255.0 alpha:1.0];
    XCTAssertEqualObjects([UIColor vok_colorWithHexInt:0xA4C53F alpha:1.0], vokalColor);
    XCTAssertEqualObjects([UIColor vok_colorWithHexInt:0xA4C53F], vokalColor);
}

- (void)testColorWithHexIntAlpha
{
    UIColor *vokalColor = [UIColor colorWithRed:164.0/255.0 green:197.0/255.0 blue:63.0/255.0 alpha:1.0];
    XCTAssertEqualObjects([UIColor vok_colorWithHexInt:0xA4C53F alpha:1.00f], vokalColor);
    XCTAssertEqualObjects([UIColor vok_colorWithHexInt:0xA4C53F alpha:0.75f], [vokalColor colorWithAlphaComponent:0.75f]);
    XCTAssertEqualObjects([UIColor vok_colorWithHexInt:0xA4C53F alpha:0.50f], [vokalColor colorWithAlphaComponent:0.50f]);
    XCTAssertEqualObjects([UIColor vok_colorWithHexInt:0xA4C53F alpha:0.25f], [vokalColor colorWithAlphaComponent:0.25f]);
    XCTAssertEqualObjects([UIColor vok_colorWithHexInt:0xA4C53F alpha:0.00f], [vokalColor colorWithAlphaComponent:0.00f]);
}

@end