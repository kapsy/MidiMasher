//
//  SettingsViewController.h
//  MidiMasher
//
//  Created by Mike on 01/02/14.
//  Copyright (c) 2014 Mike. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsViewController : UIViewController {
}
@property (weak, nonatomic) IBOutlet UIButton *Reset_Midi_Wifi_Button;
@property (weak, nonatomic) IBOutlet UIButton *Set_Bend_Max_Button;

- (IBAction)Reset_Midi_Wifi_Touch_Down:(id)sender;
- (IBAction)Set_Bend_Max_Touch_Down:(id)sender;

@end
