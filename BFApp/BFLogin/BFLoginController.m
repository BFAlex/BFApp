//
//  BFLoginController.m
//  BFApp
//
//  Created by BFAlex on 2018/5/8.
//  Copyright © 2018年 BFAlex. All rights reserved.
//

#import "BFLoginController.h"
#import "UIView+BFView.h"

@interface BFLoginController () {
    UIView *_avatarBgView;
    UITextField *_accountTF;
    UITextField *_passwordTF;
    UIButton *_loginBtn;
}

@end

@implementation BFLoginController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupLoginView];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - View

- (void)setupLoginView {
    
    // 导航
    self.navigationController.navigationBar.hidden = true;
    
    // 头像
    [self setUpAvatarView];
    
    // 输入框
    CGFloat tfViewHeight = 40.0;
    
    UITextField *accountTF = [[UITextField alloc] init];
    [self.view addSubview:accountTF];
    _accountTF = accountTF;
    CGRect accountTFFrame = CGRectMake(30, _avatarBgView.bottom + 20, self.view.width - 60, tfViewHeight);
    accountTF.frame = accountTFFrame;
    accountTF.placeholder = @"请输入帐号";
    accountTF.borderStyle = UITextBorderStyleRoundedRect;
    accountTF.clearButtonMode = UITextFieldViewModeWhileEditing;
    [accountTF cornerView];
    
    UITextField *passwordTF = [[UITextField alloc] init];
    [self.view addSubview:passwordTF];
    _passwordTF = passwordTF;
    CGRect passwordTFFrame = CGRectMake(30, _accountTF.bottom + 8, self.view.width - 60, tfViewHeight);
    passwordTF.frame = passwordTFFrame;
    passwordTF.placeholder = @"请输入密码";
    passwordTF.borderStyle = UITextBorderStyleRoundedRect;
    passwordTF.clearButtonMode = UITextFieldViewModeWhileEditing;
    [passwordTF cornerView];
    passwordTF.secureTextEntry = true;
    
    UIButton *loginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:loginBtn];
    _loginBtn = loginBtn;
    CGRect loginBtnFrame = CGRectMake(_passwordTF.left, _passwordTF.bottom + 10, _passwordTF.width, tfViewHeight);
    loginBtn.frame = loginBtnFrame;
    [loginBtn setTitle:@"登录" forState:UIControlStateNormal];
    [loginBtn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    [loginBtn setBackgroundColor:BFAppThemeColor];
    [loginBtn cornerViewWithBorderColor:[UIColor clearColor]];
    loginBtn.enabled = true;
    
    UIButton *registerBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:registerBtn];
    CGRect registerBtnFrame = CGRectMake(_loginBtn.left, _loginBtn.bottom + 8, 60, 30);
    registerBtn.frame = registerBtnFrame;
    [registerBtn setTitle:@"注册" forState:UIControlStateNormal];
    [registerBtn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    [registerBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    registerBtn.enabled = true;
    
    UIButton *forgotPwdBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:forgotPwdBtn];
    CGRect forgotPwdBtnFrame = CGRectMake(_loginBtn.right - 120, _loginBtn.bottom + 8, 120, 30);
    forgotPwdBtn.frame = forgotPwdBtnFrame;
    [forgotPwdBtn setTitle:@"忘记密码" forState:UIControlStateNormal];
    [forgotPwdBtn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    [forgotPwdBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    forgotPwdBtn.enabled = true;
}

- (void)setUpAvatarView {
    
    UIView *avatarBgView = [[UIView alloc] init];
    [self.view addSubview:avatarBgView];
    _avatarBgView = avatarBgView;
    CGRect avatarBgViewFrame = CGRectMake(0, 0, BFScreenWidth, BFScreenHeight * 0.3);
    avatarBgView.frame = avatarBgViewFrame;
    avatarBgView.backgroundColor = BFAppThemeColor;
    
    UIImageView *avatarView = [[UIImageView alloc] init];
    [avatarBgView addSubview:avatarView];
    CGFloat avatarWH = 120;
    avatarView.frame = CGRectMake(0, 0, avatarWH, avatarWH);
    CGPoint avatarViewCenterPoint = avatarBgView.center;
    avatarViewCenterPoint.y += 20;
    avatarView.center = avatarViewCenterPoint;
    // 设置圆角
    avatarView.layer.cornerRadius = avatarWH/2;
    //    avatarView.layer.borderWidth = 1;
    avatarView.clipsToBounds =  true;
    
    UIImage *avatarImg = [UIImage imageNamed:@"default_avatar"];
    avatarView.image = avatarImg;
}

@end
