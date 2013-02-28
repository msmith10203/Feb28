//
//  View.m
//  Triangle
//
//  Created by Mike Smith on 2/26/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}



-(void)myDrawRect: (CGContextRef) myContext andwd: (CGFloat) w andht: (CGFloat) h
{
    CGSize myShadowOffset = CGSizeMake(-15, 20);
    CGFloat myColorValues[] = {1, 0, 0, .6};
    CGColorRef myColor;
    CGColorSpaceRef myColorSpace;
    
    CGContextSaveGState(myContext);
    
    CGContextSetShadow(myContext, myShadowOffset, 5);
    CGContextSetRGBFillColor(myContext, 0, 1, 0, 1);
    CGContextFillRect(myContext, CGRectMake(w/3+75, h/2, w/4, h/4));
    myColorSpace = CGColorSpaceCreateDeviceRGB();
    myColor = CGColorCreate(myColorSpace, myColorValues);
    CGContextSetShadowWithColor(myContext, myShadowOffset, 5, myColor);
    
    CGContextSetRGBFillColor(myContext, 0, 0, 1, 1);
    CGContextFillRect(myContext, CGRectMake(w/3-75, h/2-100, w/4, h/4));
    
    CGColorRelease(myColor);
    CGColorSpaceRelease(myColorSpace);
    CGContextRestoreGState(myContext);
}



// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    
    // Drawing code
    CGSize size = self.bounds.size;
    CGFloat min = MIN(size.width, size.height);
    CGFloat length = min * 5 / 8;
    
    CGMutablePathRef p = CGPathCreateMutable();
    CGPathMoveToPoint(p, NULL, 0, 0);
    CGPathAddLineToPoint(p, NULL, 0, length);
    CGPathAddLineToPoint(p, NULL, -length, 0);
    CGPathCloseSubpath(p);
    
    CGContextRef c = UIGraphicsGetCurrentContext();
    
    CGContextTranslateCTM(c,
                          (size.width + length) / 2,
                          (size.height + length) / 2
    );
    NSLog(@"width: %f height: %f length: %f", size.width, size.height, length);
    NSLog(@"width + length / 2: %f height + length / 2: %f length: %f",
          size.width+length/2, size.height+length/2, length);
    CGContextScaleCTM(c, 1, -1);
    CGContextBeginPath(c);
    
    myDrawRect(c, 100, 100);
    
    CGContextSetShadow(c, CGSizeMake(10, -20), 5);
    
    CGContextAddPath(c, p);
    CGContextSetRGBFillColor(c, 1.0, 0.0, 0.0, 1);
    CGContextFillPath(c);
    
    CGContextBeginPath(c);
    CGContextAddPath(c, p);
    CGContextSetLineWidth(c, 10.0);
    CGContextSetRGBStrokeColor(c, 0.0, 0.0, 1.0, 1);
    CGContextStrokePath(c);
    CGPathRelease(p);
}


@end
