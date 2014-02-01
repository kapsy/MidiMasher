//
//  MidiMasherViewController.m
//
//  Created by Mike on 12/11/13.
//  Copyright (c) 2013 Mike. All rights reserved.
//

#import "MidiMasherViewController.h"

#import "NetworkMidi.h"



@implementation MidiMasherViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    hd::sound::NetworkMidi::InitNetworkMidi();
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)key_001_touchDown:(id)sender {
    hd::sound::NetworkMidi::SendNoteOn(60);
    self.key_001.backgroundColor = [UIColor blueColor];
}

- (IBAction)key_001_touchUpInside:(id)sender {
    hd::sound::NetworkMidi::SendNoteOff(60);
    self.key_001.backgroundColor = [UIColor yellowColor];
}

- (IBAction)key_001_touchUpOutside:(id)sender {
    hd::sound::NetworkMidi::SendNoteOff(60);
    self.key_001.backgroundColor = [UIColor yellowColor];
}

- (IBAction)key_002_touchDown:(id)sender {
    hd::sound::NetworkMidi::SendNoteOn(61);
    self.key_002.backgroundColor = [UIColor blueColor];
}

- (IBAction)key_002_touchUpInside:(id)sender {
    hd::sound::NetworkMidi::SendNoteOff(61);
    self.key_002.backgroundColor = [UIColor yellowColor];
}

- (IBAction)key_002_touchUpOutside:(id)sender {
    hd::sound::NetworkMidi::SendNoteOff(61);
    self.key_002.backgroundColor = [UIColor yellowColor];
}




@end
