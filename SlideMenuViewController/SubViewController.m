//
//  SubViewController.m
//  SlideMenuViewController
//
//  Created by 潘元荣(外包) on 16/8/26.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

#import "SubViewController.h"

@interface SubViewController ()

@end

@implementation SubViewController
- (instancetype)init{
    if (self = [super init]) {
        self.tabBarItem.image = [UIImage imageNamed:@"TabBar_me_girl"];
        self.tabBarItem.selectedImage = [UIImage imageNamed:@"TabBar_me_girl_selected"];
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor darkGrayColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
