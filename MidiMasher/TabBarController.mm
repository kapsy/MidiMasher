//
//  TabBarController.m
//
//  Created by Mike on 01/02/14
//  Copyright (c) 2013 Mike. All rights reserved.
//

#import "TabBarController.h"




@implementation TabBarController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"TabBarController: viewWillAppear called");
    // Fix the frame of the UIViewControllerWrapperView
    self.selectedViewController.view.superview.frame = self.view.bounds;
}

- (void)viewDidLayoutSubviews {
    NSLog(@"TabBarController: viewDidLayoutSubviews");
    // fix for iOS7 bug in UITabBarController
    self.selectedViewController.view.superview.frame = self.view.bounds;
}

// - (void)viewDidLoad
// {
//     [super viewDidLoad];
// }
// 
// - (void)didReceiveMemoryWarning
// {
//     [super didReceiveMemoryWarning];
//     // Dispose of any resources that can be recreated.
// }

@end
