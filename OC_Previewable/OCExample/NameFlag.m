//
//  NameFlag.m
//  OC_Previewable
//
//  Created by liang on 2020/1/1.
//  Copyright © 2020 liang. All rights reserved.
//

#import "NameFlag.h"

@interface NameFlag ()

@property (nonatomic, strong) UIImageView *avatar;

@property (nonatomic, strong) UILabel *name;

@property (nonatomic, strong) UITextField *feedback;

@end

@implementation NameFlag


-(instancetype)initWithFrame:(CGRect)frame{
    if(self = [super initWithFrame:frame]) {
        CGFloat imgSize = 160;
        UIImageView *avatar = [UIImageView new];
        self.avatar = avatar;
        avatar.image = [UIImage imageNamed:@"duck"];
        avatar.layer.cornerRadius = imgSize / 2;
        avatar.contentMode = UIViewContentModeScaleAspectFit;
        avatar.clipsToBounds = YES;
        [self addSubview:avatar];
        avatar.layer.borderColor = [UIColor greenColor].CGColor;
        avatar.layer.borderWidth = 1;
            
        avatar.translatesAutoresizingMaskIntoConstraints = NO;
        [NSLayoutConstraint activateConstraints:@[
            [avatar.topAnchor constraintEqualToAnchor:self.topAnchor constant:10],
            [avatar.widthAnchor constraintEqualToConstant:imgSize],
            [avatar.centerXAnchor constraintEqualToAnchor:self.centerXAnchor],
            [avatar.heightAnchor constraintEqualToConstant:imgSize]
            
        ]];
        
        UILabel *name = [UILabel new];
        self.name = name;
        name.font = [UIFont systemFontOfSize:20];
        name.textColor = [UIColor darkTextColor];
        name.translatesAutoresizingMaskIntoConstraints = NO;
        [self addSubview:name];
        
        [NSLayoutConstraint activateConstraints:@[
            [name.topAnchor constraintEqualToAnchor:avatar.bottomAnchor constant:15],
            [name.centerXAnchor constraintEqualToAnchor:self.centerXAnchor],
        ]];
        
        UITextField *feedback = [UITextField new];
        feedback.placeholder = @"这里输入的内容会不会因为 hotreload 而丢失？";
        feedback.textColor = [UIColor  systemGrayColor];
        feedback.font = [UIFont systemFontOfSize:16];
        if (@available(iOS 13.0, *)) {
            feedback.layer.borderColor = [UIColor systemGray3Color].CGColor;
        } else {
            // Fallback on earlier versions
        }
        feedback.layer.borderWidth = 1;
        [self addSubview:feedback];
        
        feedback.translatesAutoresizingMaskIntoConstraints = NO;
        [NSLayoutConstraint activateConstraints:@[
               [feedback.topAnchor constraintEqualToAnchor:name.bottomAnchor constant:30],
               [feedback.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:15],
               [feedback.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant:-15],
           ]];
    }
    return self;
}

- (void)configureWithImageName:(NSString *)imageName name:(NSString *)name{
    self.avatar.image = [UIImage imageNamed:imageName];
    self.name.text = name;
}


@end
