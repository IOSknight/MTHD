//
//  MTNavigationViewController.m
//  MTHD
//
//  Created by 刘畅 on 16/2/29.
//  Copyright © 2016年 LCfan. All rights reserved.
//

#import "MTNavigationViewController.h"

@interface MTNavigationViewController ()

@end

@implementation MTNavigationViewController
+(void)initialize
{
    UINavigationBar *bar=[UINavigationBar appearance];
    [bar setBackgroundImage:[UIImage imageNamed:@"bg_navigationBar_normal"] forBarMetrics:UIBarMetricsDefault];
}

- (void)viewDidLoad {
    [super viewDidLoad];
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
