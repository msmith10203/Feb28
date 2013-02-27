//
//  View.m
//  RedCross
//
//  Created by Mike Smith on 2/25/13.
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


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    
    // Drawing code
    CGSize size = self.bounds.size;
    CGFloat min = MIN(size.width, size.height);
    CGFloat longSide = min * 15 / 16;
    CGFloat shortSide = longSide / 3;
    
    CGContextRef c = UIGraphicsGetCurrentContext();
    CGContextBeginPath(c);
    
    CGContextTranslateCTM(c, size.width / 2, size.height / 2);
    CGContextRotateCTM(c, -15.0*M_PI/180.0);
    
    
    CGContextScaleCTM(c, 1, -1);
    
    CGRect horizontal = CGRectMake(-longSide / 2,
                                   -shortSide / 2,
                                   longSide,
                                   shortSide);
    
//    CGRect vertical = CGRectMake(-shortSide / 2, -longSide / 2 ,shortSide, longSide);
    CGContextAddRect(c, horizontal);
//    CGContextAddRect(c, vertical);

    CGContextSetRGBFillColor(c, 1.0, 0.0, 0.0, 0.5);
    CGContextFillPath(c);

    CGContextBeginPath(c);
    CGContextRotateCTM(c, M_PI/2);
    CGContextAddRect(c, horizontal);
    
    CGContextSetRGBFillColor(c, 0.0, 0.0, 1.0, 0.5);
    CGContextFillPath(c);
}

@end
