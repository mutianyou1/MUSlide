//
//  ViewController.m
//  SlideMenuViewController
//
//  Created by 潘元荣(外包) on 16/8/25.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

#import "ViewController.h"
#import "MUSlideHeader.h"
@interface ViewController ()

@end

@implementation ViewController
- (instancetype)init{
    if (self = [super init]) {
        self.tabBarItem.image = [UIImage imageNamed:@"TabBar_home"];
        self.tabBarItem.selectedImage = [UIImage imageNamed:@"TabBar_home_selected"];
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    for (int i = 0; i < 3; i++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(KWidth*0.5 - 60, 120+i*60, 120, 40);
        button.backgroundColor = kSkyColor;
        button.titleLabel.text = [NSString stringWithFormat:@"title%d",i+1];
        [button setTitle:[NSString stringWithFormat:@"title%d",i+1] forState:UIControlStateNormal];
        button.titleLabel.font = [UIFont systemFontOfSize:18];
        [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        button.layer.cornerRadius = 10.0;
        button.layer.borderWidth = 1;
        button.layer.borderColor = [UIColor whiteColor].CGColor;
        [button addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
    }
}
- (void)click:(UIButton*)sender{
    NSLog(@"%@",sender.titleLabel.text);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
