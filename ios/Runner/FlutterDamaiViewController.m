//
//  FlutterDamaiViewController.m
//  Runner
//
//  Created by lichentao on 2018/11/7.
//  Copyright © 2018年 The Chromium Authors. All rights reserved.
//

#import "FlutterDamaiViewController.h"

@interface FlutterDamaiViewController ()

@end

@implementation FlutterDamaiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES];
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
