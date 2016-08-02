//
//  LoginViewController.m
//  CycriptTest
//
//  Created by 小伍 on 16/7/30.
//  Copyright © 2016年 小伍. All rights reserved.
//

#import "LoginViewController.h"
#import "ViewController.h"
@interface LoginViewController ()
{
    int num;
}
@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.navigationController.navigationBar.translucent = NO;
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    self.title = @"登录界面";
//    NSLog(@"%@",[UIApplication sharedApplication].keyWindow.rootViewController.childViewControllers[0].visibleViewController);

    UITextField * username = [[UITextField alloc]initWithFrame:CGRectMake(100, 100, 100, 30)];
    username.layer.borderColor = [UIColor blackColor].CGColor;
    username.layer.borderWidth = 1;
    [username setPlaceholder:@"用户名"];
    [self.view addSubview:username];
    
    
    UITextField * password = [[UITextField alloc]initWithFrame:CGRectMake(100, 200, 100, 30)];
    password.layer.borderColor = [UIColor blackColor].CGColor;
    password.layer.borderWidth = 1;
    [password setPlaceholder:@"密码"];
    [self.view addSubview:password];
    
    UIButton *login = [UIButton buttonWithType:UIButtonTypeCustom];
    [login setFrame:CGRectMake(100, 260, 100, 30)];
    [login setBackgroundColor:[UIColor redColor]];
    [login setTitle:@"登录" forState:UIControlStateNormal];
    [login addTarget:self action:@selector(loginAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:login];
    
    num = 1;
    
    
    
    
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    if (num == 1) {
        
        [self.view setBackgroundColor:[UIColor redColor]];
        num = 0;
    }
    else
    {
        [self.view setBackgroundColor:[UIColor whiteColor]];
        num = 1;
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loginAction
{
    ViewController * viewC = [[ViewController alloc]init];
//    [self presentViewController:viewC animated:YES completion:nil];
    [self.navigationController pushViewController:viewC animated:YES];
}

@end
