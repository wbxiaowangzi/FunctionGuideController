//
//  ViewController.m
//  FunctionGuiding
//
//  Created by wbxiaowangzi on 16/2/24.
//  Copyright © 2016年 上海燃耀. All rights reserved.
//

#import "ViewController.h"
#import "RAYNewFunctionGuideVC.h"

#define WINSIZE [UIScreen mainScreen].bounds.size


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    


}

- (void)viewDidAppear:(BOOL)animated{
    [self makeFunctionGuide];

}
- (void)makeFunctionGuide{
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    NSString *firstComeInTeacherDetail = @"isFirstEnterHere";
    [user setBool:NO forKey:firstComeInTeacherDetail];
    
    if (![user boolForKey:firstComeInTeacherDetail]) {
        [user setBool:YES forKey:firstComeInTeacherDetail];
        [user synchronize];
        [self makeGuideView];
    }
    
}

- (void)makeGuideView{
    RAYNewFunctionGuideVC *vc = [[RAYNewFunctionGuideVC alloc]init];
    vc.titles = @[@"新增: 功能1，",@"新增: 功能2，",@"新增: 功能3，",@"新增: 功能4，",@"新增: 功能5，",];
    vc.frames = @[@"{{0,  60},{100,80}}",
                  @"{{200,60},{100,80}}",
                  @"{{0,  360},{100,80}}",
                  @"{{200,360},{100,80}}",
                  @"{{100,210},{100,80}}",
                  ];
    
    [self presentViewController:vc animated:YES completion:nil];
    
}


@end
