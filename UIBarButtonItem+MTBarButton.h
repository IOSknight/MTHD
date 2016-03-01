//
//  UIBarButtonItem+MTBarButton.h
//  MTHD
//
//  Created by 刘畅 on 16/3/1.
//  Copyright © 2016年 LCfan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (MTBarButton)

+(UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action imageForNormal:(NSString *)image imageForHighlighted:(NSString *)highImage;
@end
