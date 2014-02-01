//
//  HelloWorldViewController.h
//  MidiMasher
//
//  Created by Mike on 12/11/13.
//  Copyright (c) 2013 Mike. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloWorldViewController : UIViewController {
}

@property (weak, nonatomic) IBOutlet UIButton *outlet_test;

- (IBAction)midi_1:(id)sender;
- (IBAction)midi_2:(id)sender;

@end
