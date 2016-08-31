//
//  SettingViewController.m
//  SlideMenuViewController
//
//  Created by 潘元荣(外包) on 16/8/30.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

#import "SettingViewController.h"
#import "MUSlideHeader.h"
@interface SettingViewController ()
@property (nonatomic, strong)UILabel *titleLabel;
@end

@implementation SettingViewController
- (UILabel *)titleLabel{
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, KHeight*0.5, KWidth, 40)];
        _titleLabel.text = @"设置内容页面";
        _titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _titleLabel;
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.titleLabel];
    
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeSystem];
    backButton.frame = CGRectMake(0, 40, 50, 30);
    [backButton setTitle:@"<返回" forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(clickDismiss) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backButton];
}
- (void)clickDismiss{
    [self dismissViewControllerAnimated:YES completion:nil];
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
