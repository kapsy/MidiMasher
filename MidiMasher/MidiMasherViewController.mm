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

    self.white_off = [UIColor whiteColor];
    self.white_on = [UIColor grayColor];
    self.black_off = [UIColor darkGrayColor];
    self.black_on = [UIColor blackColor];

    [self init_keys];

    self.key_001.backgroundColor = self.white_off;//[self->keys objectAtIndex:0];
    self.key_002.backgroundColor = self.black_off;//[self->keys objectAtIndex:1];
 
//    self.key_003.backgroundColor = self.white_off;
//    self.key_004.backgroundColor = self.black_off;
//    self.key_005.backgroundColor = self.white_off;
//    self.key_006.backgroundColor = self.white_off;
//    self.key_007.backgroundColor = self.black_off;
//    self.key_008.backgroundColor = self.white_off;
//    self.key_009.backgroundColor = self.black_off;
//    self.key_010.backgroundColor = self.white_off;
//    self.key_011.backgroundColor = self.black_off;
//    self.key_012.backgroundColor = self.white_off;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)init_keys {
    NSLog(@"init_keys called.");

    nums = [NSArray arrayWithObjects: @1, @2, @3, nil];
    keys = [NSArray arrayWithObjects: 
        self.white_off, self.white_on, 
        self.black_off, self.black_on,
        self.white_off, self.white_on, 
        self.black_off, self.black_on,
        self.white_off, self.white_on, 
        self.white_off, self.white_on, 
        self.black_off, self.black_on,
        self.white_off, self.white_on, 
        self.black_off, self.black_on,
        self.white_off, self.white_on, 
        self.black_off, self.black_on,
        self.white_off, self.white_on, 
        nil];

}

- (IBAction)key_001_touchDown:(id)sender {
    hd::sound::NetworkMidi::SendNoteOn(60);
    self.key_001.backgroundColor = [self->keys objectAtIndex:1];
}

- (IBAction)key_001_touchUpInside:(id)sender {
    hd::sound::NetworkMidi::SendNoteOff(60);
    self.key_001.backgroundColor = [self->keys objectAtIndex:0]; //[self->keys objectAtIndex:0];
}

- (IBAction)key_001_touchUpOutside:(id)sender {
    hd::sound::NetworkMidi::SendNoteOff(60);
    self.key_001.backgroundColor = [self->keys objectAtIndex:0];
}

- (IBAction)key_002_touchDown:(id)sender {
    hd::sound::NetworkMidi::SendNoteOn(61);
    self.key_002.backgroundColor = [self->keys objectAtIndex:3];
}

- (IBAction)key_002_touchUpInside:(id)sender {
    hd::sound::NetworkMidi::SendNoteOff(61);
    self.key_002.backgroundColor = [self->keys objectAtIndex:2];
}

- (IBAction)key_002_touchUpOutside:(id)sender {
    hd::sound::NetworkMidi::SendNoteOff(61);
    self.key_002.backgroundColor = [self->keys objectAtIndex:2];
}

@end
