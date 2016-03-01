//
//  MTAllConst.h
//  MTHD
//
//  Created by 刘畅 on 16/2/29.
//  Copyright © 2016年 LCfan. All rights reserved.
//

#ifdef DEBUG
#define MTLog(...) NSLog(_VA_ARGS_)
#else
#define MTLog(...)
#endif

#define MTColor(r,g,b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:0]
#define MTGlobalBackgroundColor MTColor(230,230,230);