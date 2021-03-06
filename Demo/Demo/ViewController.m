//
//  ViewController.m
//  FTPopOverMenu
//
//  Created by liufengting on 16/4/5.
//  Copyright © 2016年 liufengting ( https://github.com/liufengting ). All
//  rights reserved.
//

#import "ViewController.h"
#import "FTPopOverMenu.h"

@interface ViewController () {
    BOOL _change;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any of the following setting to set the style
    
    //    [FTPopOverMenu setTintColor:[UIColor brownColor]];
    //    [FTPopOverMenu setTextColor:[UIColor redColor]];
    //    [FTPopOverMenu setPreferedWidth:150];
}

- (IBAction)showMenuFromButton:(UIButton *)sender {
    _change = !_change;
    if (_change) {
        [FTPopOverMenu showFromSenderFrame:sender.frame
                                  withMenu:@[ @"Menu1", @"Menu2", @"Menu3" ]
                            imageNameArray:@[ @"setting_icon", @"setting_icon", @"setting_icon" ]
                                 doneBlock:^(NSInteger selectedIndex) {
                                     NSLog(@"done block. do something. selectedIndex : %ld",
                                           (long)selectedIndex);
                                 }
                              dismissBlock:^{
                                  NSLog(@"user canceled. do nothing.");
                              }];
    } else {
        [FTPopOverMenu showNoneArrowFromSenderFrame:sender.frame
                                           withMenu:@[ @"Menu1", @"Menu2", @"Menu3" ]
                                     imageNameArray:@[@"setting_icon", @"setting_icon", @"setting_icon"]
                                          doneBlock:^(NSInteger selectedIndex) {
                                          }
                                       dismissBlock:nil];
    }
}

@end
