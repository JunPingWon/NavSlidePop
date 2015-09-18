//
//  ViewController.m
//  NavSlidePop
//
//  Created by JunpingWon on 15/9/18.
//  Copyright (c) 2015年 JunpingWon. All rights reserved.
//

#import "RootViewController.h"
#import "SecondViewController.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"One";
    self.view.backgroundColor = [UIColor cyanColor];
    UIButton *pushBtn = [[UIButton alloc]initWithFrame:CGRectMake(55, 100, 100, 100)];
    [pushBtn setTitle:@"PUSH" forState:UIControlStateNormal];
    [pushBtn addTarget:self action:@selector(pushBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushBtn];
}

- (void)pushBtnAction:(UIButton *)btn
{
    SecondViewController *secondVC = [[SecondViewController alloc]init];
    [self.navigationController pushViewController:secondVC animated:YES];
    
}
@end
