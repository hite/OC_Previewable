//
//  ViewController.m
//  OC_Previewable
//
//  Created by liang on 2019/12/31.
//  Copyright © 2019 liang. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
    
    UILabel *name = [UILabel new];
    name.text = @"大型文件不行？";
    name.font = [UIFont systemFontOfSize:12];
    [name sizeToFit];
    [self.view addSubview:name];
}


@end
