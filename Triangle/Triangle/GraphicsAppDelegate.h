//
//  GraphicsAppDelegate.h
//  Triangle
//
//  Created by Mike Smith on 2/26/13.
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
