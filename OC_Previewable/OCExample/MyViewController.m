//
//  ViewController.m
//  OC_Previewable
//
//  Created by liang on 2019/12/31.
//  Copyright © 2019 liang. All rights reserved.
//

#import "MyViewController.h"
#import "NameFlag.h"
#import <UIKit/UIKit.h>

@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NameFlag *name = [NameFlag new];
    name.frame = CGRectMake(10, 100, 400, 300);

    [name configureWithImageName:@"duck" name:[NSString stringWithFormat:@"%@- ", self.navigationController.viewControllers[0]] count:3];
    [self.view addSubview:name];
}


@end
