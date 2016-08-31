//
//  RightViewController.m
//  SlideMenuViewController
//
//  Created by 潘元荣(外包) on 16/8/25.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

#import "RightViewController.h"
#import "SettingViewController.h"
#import "MUSlideHeader.h"
#import "MUSlideMenuManager.h"
@interface RightViewController ()<UIScrollViewDelegate>
@property (nonatomic, strong)UIScrollView *photoScrollView;
@end

@implementation RightViewController
- (UIScrollView *)photoScrollView{
    if (!_photoScrollView) {
        _photoScrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 30, 200*KWidthScale, 100*KHeightScale)];
        _photoScrollView.delegate = self;
        _photoScrollView.pagingEnabled = YES;
        _photoScrollView.showsHorizontalScrollIndicator = NO;
        _photoScrollView.showsVerticalScrollIndicator = NO;
        _photoScrollView.contentSize = CGSizeMake(200*KWidthScale*4, 0);
    }
    return _photoScrollView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = kSkyColor;
    [self.view addSubview:self.photoScrollView];
    [self addPhotos];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(100*KWidthScale - 60, 40+100*KHeightScale, 120, 30);
    [button setTitle:@"设置页面" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(clickPresentViewController) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)addPhotos{
    NSArray *colors = @[[UIColor redColor],[UIColor greenColor],[UIColor purpleColor],[UIColor blueColor]];
    for (int i = 0; i < 4; i++) {
        UIView *view = [[UIView alloc]initWithFrame:CGRectMake(i*200*KWidthScale, 0, 200*KWidthScale, 100*KHeightScale)];
        view.backgroundColor = colors[i];
        [self.photoScrollView addSubview:view];
    }
}
- (void)clickPresentViewController{
    UIViewController *vc = [[SettingViewController alloc]init];
    [[MUSlideMenuManager manager] presentViewController:vc animated:YES];
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
