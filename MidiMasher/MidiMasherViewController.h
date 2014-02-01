//
//  MidiMasherViewController.h
//  MidiMasher
//
//  Created by Mike on 12/11/13.
//  Copyright (c) 2013 Mike. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MidiMasherViewController : UIViewController {
}

@property (weak, nonatomic) IBOutlet UIButton *key_001;
@property (weak, nonatomic) IBOutlet UIButton *key_002;

- (IBAction)key_001_touchDown:(id)sender;
- (IBAction)key_001_touchUpInside:(id)sender;
- (IBAction)key_001_touchUpOutside:(id)sender;

- (IBAction)key_002_touchDown:(id)sender;
- (IBAction)key_002_touchUpInside:(id)sender;
- (IBAction)key_002_touchUpOutside:(id)sender;

@end
