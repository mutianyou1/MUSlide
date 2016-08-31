//
//  LeftViewController.m
//  SlideMenuViewController
//
//  Created by 潘元荣(外包) on 16/8/25.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

#import "LeftViewController.h"

@interface LeftViewController ()

@end

@implementation LeftViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(KWidth - 120, KHeight - 60, 120, 40);
    [button setTitle:@"夜间模式" forState:UIControlStateNormal];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(changeBackground:) forControlEvents:UIControlEventTouchUpInside];
    
}
- (void)changeBackground:(UIButton*)sender{
    if ([sender.titleLabel.text containsString:@"夜间"]) {
        [sender setTitle:@"白天模式" forState:UIControlStateNormal];
         [[MUSlideMenuManager manager] changeBackgroundModel:@"白天"];
    }else{
       [sender setTitle:@"夜间模式" forState:UIControlStateNormal];
         [[MUSlideMenuManager manager] changeBackgroundModel:@"夜间"];
    }
   
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
