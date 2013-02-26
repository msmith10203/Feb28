//
//  View.m
//  JapanFlag
//
//  Created by Mike Smith on 2/24/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];
//        CGFloat w = self.bounds.size.width;   // 3
//        CGFloat h = self.bounds.size.height;  // 3
//        self.bounds = CGRectMake(-w / 2, -h / 2, w, h);  //3
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    UIFont *font = [UIFont systemFontOfSize:32];
    [@"Origin" drawAtPoint: CGPointZero withFont: font];
    
    NSLog(@"self.frame==(%g, %g), %g x %g",
          self.frame.origin.x,
          self.frame.origin.y,
          self.frame.size.width,
          self.frame.size.height);
    NSLog(@"self.bounds==(%g, %g), %g x %g",
    self.bounds.origin.x,
          self.bounds.origin.y,
          self.bounds.size.width,
          self.bounds.size.height
          );
    
    // Drawing code
    CGRect bounds = self.bounds;
    CGFloat radius = .3 * bounds.size.width;
    
    //CGRect r = CGRectMake(bounds.origin.x,
    //                      bounds.origin.y,
    //                      2*radius,
    //                      2*radius);
    
    CGRect r = CGRectMake(-radius,
                          -radius,
                          2*radius,
                          2*radius
                          );
    
    CGContextRef c = UIGraphicsGetCurrentContext();
    // CGContextBeginPath(c);
    
//    CGAffineTransform scale = CGAffineTransformMakeScale(2,2); // lower
    
    // Put the origin at the center of the UIView
    CGContextTranslateCTM(c,                            
                          bounds.size.width / 2,
                          bounds.size.height / 2); // 3

    // Make the Y axis point up
    CGContextScaleCTM(c, 1, -1);
    
    //CGContextScaleCTM(c, 2, 2);
//    CGAffineTransform scale = CGAffineTransformMakeScale(2,2); // lower right; twice size
    CGAffineTransform scale = CGAffineTransformMakeScale(1,1);  // centered
//    CGAffineTransform scale = CGAffineTransformMakeScale(.5,.5); // upper left; small
//    CGAffineTransform scale = CGAffineTransformMakeScale(0,0); // noflag
//    CGAffineTransform scale = CGAffineTransformMakeScale(1,.5); // skewed
//    CGAffineTransform scale = CGAffineTransformMakeScale(-1,-1); // noflag
    
    CGContextConcatCTM(c, scale);
    
//    CGAffineTransform translate = CGAffineTransformMakeTranslation (
//        bounds.size.width / 2,
//        bounds.size.height / 2);
    
    CGAffineTransform ctm = CGContextGetCTM(c);
    NSLog(@"%6g%6g%6g", ctm.a, ctm.b, 0.0);
    NSLog(@"%6g%6g%6g", ctm.c, ctm.d, 0.0);
    NSLog(@"%6g%6g%6g", ctm.tx, ctm.ty, 1.0);
    
    //CGContextConcatCTM(c, translate);
    
    CGContextAddEllipseInRect(c, r);
    CGContextSetRGBFillColor(c, 1.0, 0.0, 0.0, 1.0);
    CGContextFillPath(c);

}


@end
