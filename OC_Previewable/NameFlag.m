//
//  NameFlag.m
//  OC_Previewable
//
//  Created by liang on 2020/1/1.
//  Copyright © 2020 liang. All rights reserved.
//

#import "NameFlag.h"

@implementation NameFlag

-(instancetype)initWithFrame:(CGRect)frame{
    if(self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor redColor];
        self.textColor = [UIColor whiteColor];
        self.font = [UIFont systemFontOfSize:24];
    }
    return self;
}

@end
