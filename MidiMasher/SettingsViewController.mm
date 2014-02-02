//
//  SettingsViewController.m
//  MidiMasher
//
//  Created by Mike on 01/02/14.
//  Copyright (c) 2014 Mike. All rights reserved.
//

#import "SettingsViewController.h"

#import "NetworkMidi.h"

@implementation SettingsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Reset_Midi_Wifi_Touch_Down:(id)sender {
    NSLog(@"Reset_Midi_Wifi_Touch_Down");
    hd::sound::NetworkMidi::InitNetworkMidi();
}
@end
