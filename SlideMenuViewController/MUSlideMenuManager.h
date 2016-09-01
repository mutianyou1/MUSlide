//
//  MUSlideMenuManager.h
//  SlideMenuViewController
//
//  Created by 潘元荣(外包) on 16/8/25.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

#import <Foundation/Foundation.h>

@class UIViewController;

@interface MUSlideMenuManager : NSObject


+ (id)manager;

- (void)setLeftViewController:(UIViewController*)viewController leftMargin:(float)leftMargin;
- (void)setMiddleViewController:(UIViewController*)middleController backGroundImageWithName:(NSString*)imageName;
- (void)setRigthViewController:(UIViewController*)viewController rightMargin:(float)rightMargin;
- (UIViewController*)rootViewController;

- (void)changeBackgroundModel:(NSString*)model;
- (void)presentViewController:(UIViewController*)viewController animated:(BOOL)animated;

@end
