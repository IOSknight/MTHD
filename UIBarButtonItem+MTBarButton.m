//
//  UIBarButtonItem+MTBarButton.m
//  MTHD
//
//  Created by 刘畅 on 16/3/1.
//  Copyright © 2016年 LCfan. All rights reserved.
//

#import "UIBarButtonItem+MTBarButton.h"

@implementation UIBarButtonItem (MTBarButton)
+(UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action imageForNormal:(NSString *)image imageForHighlighted:(NSString *)highImage
{
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    [btn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    CGSize size=btn.currentBackgroundImage.size;
    btn.bounds=CGRectMake(0, 0, size.width, size.height);
    return [[UIBarButtonItem alloc]initWithCustomView:btn];
}

@end
