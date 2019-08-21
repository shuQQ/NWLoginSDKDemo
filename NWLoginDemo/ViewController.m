//
//  ViewController.m
//  NWLoginDemo
//
//  Created by shuqiang on 2019/7/25.
//  Copyright © 2019 sq. All rights reserved.
//

#import "ViewController.h"
#import "NMLoginViewController.h"
#import "NMRegisterViewController.h"
#import "TCYTarget_Login.h"
#import "NMOpenMobileLoginViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[TCYTarget_Login new] Action_initializeSDKWithParam:@{@"environment" : @"4"}];
}

#pragma mark - 账号密码登录
- (IBAction)onClickAccountLoginBtn:(id)sender {
    self.modalPresentationStyle=UIModalPresentationOverCurrentContext;
    UINavigationController *vc = [[TCYTarget_Login new] Action_LoginController];
    [self presentViewController:vc animated:NO completion:nil];
}

- (IBAction)onClickRegisterBtn:(id)sender {
    NMRegisterViewController *vc = [[NMRegisterViewController alloc] init];
     [self presentViewController:vc animated:NO completion:nil];
}
- (IBAction)openMobileLogin:(id)sender {
    NMOpenMobileLoginViewController *vc = [[NMOpenMobileLoginViewController alloc] init];
    [self presentViewController:vc animated:NO completion:nil];
}

@end
