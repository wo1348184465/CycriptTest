//
//  AAAViewController.m
//  CycriptTest
//
//  Created by 小伍 on 16/7/31.
//  Copyright © 2016年 小伍. All rights reserved.
//

#import "AAAViewController.h"

@interface AAAViewController ()

@end

@implementation AAAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *buttonName = [UIButton buttonWithType:UIButtonTypeCustom];
    [buttonName setFrame:CGRectMake(100, 100, 100, 100)];
    [buttonName setBackgroundColor:[UIColor redColor]];
    [buttonName setTitle:@"AAA" forState:UIControlStateNormal];
    [self.view addSubview:buttonName];
    
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    // Do any additional setup after loading the view.
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
