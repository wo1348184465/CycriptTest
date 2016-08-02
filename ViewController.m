//
//  ViewController.m
//  CycriptTest
//
//  Created by 小伍 on 16/7/30.
//  Copyright © 2016年 小伍. All rights reserved.
//

#import "ViewController.h"
#import "AAAViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"丁昊";
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UIButton *buttonName = [UIButton buttonWithType:UIButtonTypeCustom];
    [buttonName setFrame:CGRectMake(100, 250, 100, 100)];
    [buttonName setBackgroundColor:[UIColor redColor]];
    [buttonName setTitle:@"标题" forState:UIControlStateNormal];
    [buttonName addTarget:self action:@selector(ActionName) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonName];
    
    [self showView:@"丁昊"];
}

- (void)AcionName
{
    AAAViewController * aaa = [[AAAViewController alloc]init];
    [self presentViewController:aaa animated:YES completion:nil];
}

- (void)showView:(NSString *)str
{
    UILabel * label = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    [label setText:str];
    [label setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:label];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
