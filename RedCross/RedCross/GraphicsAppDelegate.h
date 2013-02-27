//
//  GraphicsAppDelegate.h
//  RedCross
//
//  Created by Mike Smith on 2/25/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;

@interface GraphicsAppDelegate : UIResponder <UIApplicationDelegate> {
    View *view;
	UIWindow *_window;
}

@property (strong, nonatomic) UIWindow *window;

@end
