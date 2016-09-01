//
//  MUSlideMenuViewController.h
//  SlideMenuViewController
//
//  Created by 潘元荣(外包) on 16/8/25.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MUSlideMenuViewController : UIViewController
@property (nonatomic, assign)CGFloat rightMargin;
@property (nonatomic, assign)CGFloat leftMargin;
@property (nonatomic, strong) UIViewController *rightViewController;
@property (nonatomic, strong) UIViewController *leftViewController;
@property (nonatomic, strong) UIViewController *middleViewController;

- (void)changeBackgroundModel:(NSString*)model;
@end
