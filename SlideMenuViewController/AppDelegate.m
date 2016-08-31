//
//  AppDelegate.m
//  SlideMenuViewController
//
//  Created by 潘元荣(外包) on 16/8/25.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "LeftViewController.h"
#import "RightViewController.h"
#import "SubViewController.h"
#import "MUSlideMenuManager.h"
#import "MUSlideHeader.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    [[MUSlideMenuManager manager] addSlideViewContollerOnWindow];
    
    UINavigationController *vc1 = [[UINavigationController alloc]initWithRootViewController:[ViewController new]];
    UINavigationController *vc2 = [[UINavigationController alloc]initWithRootViewController:[SubViewController new]];
    UITabBarController *tab = [[UITabBarController alloc]init];
    
    [tab setViewControllers:@[vc1,vc2]];
    [[MUSlideMenuManager manager] setMiddleViewController:tab backGroundImageWithName:nil];
    [[MUSlideMenuManager manager] setRigthViewController:[RightViewController new] rightMargin:KWidth*0.7];
    [[MUSlideMenuManager manager] setLeftViewController:[LeftViewController new] leftMargin:KWidth*0.3];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
