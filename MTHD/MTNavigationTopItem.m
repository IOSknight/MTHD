//
//  MTNavigationTopItem.m
//  MTHD
//
//  Created by 刘畅 on 16/3/1.
//  Copyright © 2016年 LCfan. All rights reserved.
//

#import "MTNavigationTopItem.h"

@implementation MTNavigationTopItem

+(instancetype)item
{
    return [[[NSBundle mainBundle] loadNibNamed:@"MTNavigationTopItem" owner:nil options:nil]firstObject];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
@end

