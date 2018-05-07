//
//  BFBaseController.m
//  BFApp
//
//  Created by BFAlex on 2018/5/7.
//  Copyright © 2018年 BFAlex. All rights reserved.
//

#import "BFBaseController.h"

@interface BFBaseController ()

@end

@implementation BFBaseController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupInterfaceViews];
    [self setupThemeColor];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - Theme

- (void)setupInterfaceViews {
    
    UIView *interfaceView = [[UIView alloc] init];
    self.view = interfaceView;
    //
    interfaceView.frame = BFScreenBounds;
    interfaceView.backgroundColor = BFControllerBGColor;
}

- (void)setupThemeColor {
    
}

@end
