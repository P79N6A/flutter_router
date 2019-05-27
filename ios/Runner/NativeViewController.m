//
//  NativeViewController.m
//  Runner
//
//  Created by lichentao on 2018/11/7.
//  Copyright © 2018年 The Chromium Authors. All rights reserved.
//

#import "NativeViewController.h"
#import "FlutterDamaiViewController.h"

@interface NativeViewController ()

@end

@implementation NativeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    self.title = @"Native";
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"flutter Page" forState:UIControlStateNormal];
    btn.backgroundColor =[UIColor redColor];
    btn.frame = CGRectMake(100, 100, 60, 40);
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}


-(void)btnClick:(id)sender{
    FlutterDamaiViewController *flutterVC = [[FlutterDamaiViewController alloc] init];
    [self.navigationController pushViewController:flutterVC animated:YES];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
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
