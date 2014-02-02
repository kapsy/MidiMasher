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
    hd::sound::NetworkMidi::SetPitchBendRange(24);

    self.octaves = [NSArray arrayWithObjects: @-24, @-12, @0, @12, @24, nil];
    NSLog(@"octave_selector current value: %d", self.octave_selector_001.selectedSegmentIndex);

    self.current_octave = self.octave_selector_001.selectedSegmentIndex;
    self.white_off = [UIColor whiteColor];
    self.white_on = [UIColor grayColor];
    self.black_off = [UIColor darkGrayColor];
    self.black_on = [UIColor blackColor];

    [self init_keys];

    self.key_001.backgroundColor = [self->keys objectAtIndex:0];
    self.key_002.backgroundColor = [self->keys objectAtIndex:2]; 
    self.key_003.backgroundColor = [self->keys objectAtIndex:4]; 
    self.key_004.backgroundColor = [self->keys objectAtIndex:6]; 
    self.key_005.backgroundColor = [self->keys objectAtIndex:8]; 
    self.key_006.backgroundColor = [self->keys objectAtIndex:10]; 
    self.key_007.backgroundColor = [self->keys objectAtIndex:12]; 
    self.key_008.backgroundColor = [self->keys objectAtIndex:14]; 
    self.key_009.backgroundColor = [self->keys objectAtIndex:16]; 
    self.key_010.backgroundColor = [self->keys objectAtIndex:18]; 
    self.key_011.backgroundColor = [self->keys objectAtIndex:20]; 
    self.key_012.backgroundColor = [self->keys objectAtIndex:22]; 
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

// key_001
- (IBAction)key_001_touchDown:(id)sender {
    hd::sound::NetworkMidi::SendNoteOn(60 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_001.backgroundColor = [self->keys objectAtIndex:1];
}
- (IBAction)key_001_touchDragEnter:(id)sender {
    hd::sound::NetworkMidi::SendNoteOn(60 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_001.backgroundColor = [self->keys objectAtIndex:1];
}
- (IBAction)key_001_touchUpInside:(id)sender {
    hd::sound::NetworkMidi::SendNoteOff(60 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_001.backgroundColor = [self->keys objectAtIndex:0]; //[self->keys objectAtIndex:0];
}
- (IBAction)key_001_touchUpOutside:(id)sender {
    hd::sound::NetworkMidi::SendNoteOff(60 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_001.backgroundColor = [self->keys objectAtIndex:0];
}

// key_002
- (IBAction)key_002_touchDown:(id)sender {
    hd::sound::NetworkMidi::SendNoteOn(61 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_002.backgroundColor = [self->keys objectAtIndex:3];
}
- (IBAction)key_002_touchUpInside:(id)sender {
    hd::sound::NetworkMidi::SendNoteOff(61 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_002.backgroundColor = [self->keys objectAtIndex:2];
}
- (IBAction)key_002_touchUpOutside:(id)sender {
    hd::sound::NetworkMidi::SendNoteOff(61 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_002.backgroundColor = [self->keys objectAtIndex:2];
}

// key_003
- (IBAction)key_003_touchDown:(id)sender {
    hd::sound::NetworkMidi::SendNoteOn(62 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_003.backgroundColor = [self->keys objectAtIndex:5];
}
- (IBAction)key_003_touchUpInside:(id)sender {
    hd::sound::NetworkMidi::SendNoteOff(62 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_003.backgroundColor = [self->keys objectAtIndex:4];
}
- (IBAction)key_003_touchUpOutside:(id)sender {
    hd::sound::NetworkMidi::SendNoteOff(62 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_003.backgroundColor = [self->keys objectAtIndex:4];
}

// key_004
- (IBAction)key_004_touchDown:(id)sender {
    hd::sound::NetworkMidi::SendNoteOn(63 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_004.backgroundColor = [self->keys objectAtIndex:7];
}
- (IBAction)key_004_touchUpInside:(id)sender {
    hd::sound::NetworkMidi::SendNoteOff(63 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_004.backgroundColor = [self->keys objectAtIndex:6];
}
- (IBAction)key_004_touchUpOutside:(id)sender {
    hd::sound::NetworkMidi::SendNoteOff(63 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_004.backgroundColor = [self->keys objectAtIndex:6];
}

// key_005
- (IBAction)key_005_touchDown:(id)sender {
    hd::sound::NetworkMidi::SendNoteOn(64 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_005.backgroundColor = [self->keys objectAtIndex:9];
}
- (IBAction)key_005_touchUpInside:(id)sender {
    hd::sound::NetworkMidi::SendNoteOff(64 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_005.backgroundColor = [self->keys objectAtIndex:8];
}
- (IBAction)key_005_touchUpOutside:(id)sender {
    hd::sound::NetworkMidi::SendNoteOff(64 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_005.backgroundColor = [self->keys objectAtIndex:8];
}

// key_006
- (IBAction)key_006_touchDown:(id)sender {
    hd::sound::NetworkMidi::SendNoteOn(65 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_006.backgroundColor = [self->keys objectAtIndex:11];
}
- (IBAction)key_006_touchUpInside:(id)sender {
    hd::sound::NetworkMidi::SendNoteOff(65 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_006.backgroundColor = [self->keys objectAtIndex:10];
}
- (IBAction)key_006_touchUpOutside:(id)sender {
    hd::sound::NetworkMidi::SendNoteOff(65 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_006.backgroundColor = [self->keys objectAtIndex:10];
}

// key_007
- (IBAction)key_007_touchDown:(id)sender {
    hd::sound::NetworkMidi::SendNoteOn(66 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_007.backgroundColor = [self->keys objectAtIndex:13];
}
- (IBAction)key_007_touchUpInside:(id)sender {
    hd::sound::NetworkMidi::SendNoteOff(66 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_007.backgroundColor = [self->keys objectAtIndex:12];
}
- (IBAction)key_007_touchUpOutside:(id)sender {
    hd::sound::NetworkMidi::SendNoteOff(66 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_007.backgroundColor = [self->keys objectAtIndex:12];
}

// key_008
- (IBAction)key_008_touchDown:(id)sender {
    hd::sound::NetworkMidi::SendNoteOn(67 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_008.backgroundColor = [self->keys objectAtIndex:15];
}
- (IBAction)key_008_touchUpInside:(id)sender {
    hd::sound::NetworkMidi::SendNoteOff(67 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_008.backgroundColor = [self->keys objectAtIndex:14];
}
- (IBAction)key_008_touchUpOutside:(id)sender {
    hd::sound::NetworkMidi::SendNoteOff(67 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_008.backgroundColor = [self->keys objectAtIndex:14];
}

// key_009
- (IBAction)key_009_touchDown:(id)sender {
    hd::sound::NetworkMidi::SendNoteOn(68 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_009.backgroundColor = [self->keys objectAtIndex:17];
}
- (IBAction)key_009_touchUpInside:(id)sender {
    hd::sound::NetworkMidi::SendNoteOff(68 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_009.backgroundColor = [self->keys objectAtIndex:16];
}
- (IBAction)key_009_touchUpOutside:(id)sender {
    hd::sound::NetworkMidi::SendNoteOff(68 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_009.backgroundColor = [self->keys objectAtIndex:16];
}

// key_010
- (IBAction)key_010_touchDown:(id)sender {
    hd::sound::NetworkMidi::SendNoteOn(69 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_010.backgroundColor = [self->keys objectAtIndex:19];
}
- (IBAction)key_010_touchUpInside:(id)sender {
    hd::sound::NetworkMidi::SendNoteOff(69 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_010.backgroundColor = [self->keys objectAtIndex:18];
}
- (IBAction)key_010_touchUpOutside:(id)sender {
    hd::sound::NetworkMidi::SendNoteOff(69 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_010.backgroundColor = [self->keys objectAtIndex:18];
}

// key_011
- (IBAction)key_011_touchDown:(id)sender {
    hd::sound::NetworkMidi::SendNoteOn(70 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_011.backgroundColor = [self->keys objectAtIndex:21];
}
- (IBAction)key_011_touchUpInside:(id)sender {
    hd::sound::NetworkMidi::SendNoteOff(70 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_011.backgroundColor = [self->keys objectAtIndex:20];
}
- (IBAction)key_011_touchUpOutside:(id)sender {
    hd::sound::NetworkMidi::SendNoteOff(70 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_011.backgroundColor = [self->keys objectAtIndex:20];
}

// key_012
- (IBAction)key_012_touchDown:(id)sender {
    hd::sound::NetworkMidi::SendNoteOn(71 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_012.backgroundColor = [self->keys objectAtIndex:23];
}
- (IBAction)key_012_touchUpInside:(id)sender {
    hd::sound::NetworkMidi::SendNoteOff(71 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_012.backgroundColor = [self->keys objectAtIndex:22];
}
- (IBAction)key_012_touchUpOutside:(id)sender {
    hd::sound::NetworkMidi::SendNoteOff(71 + [[self.octaves objectAtIndex:self.current_octave] integerValue]);
    self.key_012.backgroundColor = [self->keys objectAtIndex:22];
}

// pitch slider event handling.
- (IBAction)pitch_slider_Value_Changed:(id)sender {
    NSLog(@"pitch_slider_Value_Changed: %d", (int)self.pitch_slider_001.value);
    hd::sound::NetworkMidi::SendPitchMsg((int)self.pitch_slider_001.value);
}
// Resets the pitch slider to the middle when released
- (IBAction)pitch_slider_Touch_Up_Inside:(id)sender {
    NSLog(@"pitch_slider_Touch_Up_Inside");
    self.pitch_slider_001.value = 8191.0F;
    hd::sound::NetworkMidi::SendPitchMsg(8191); //TODO: define constant for 0 pitch
}
- (IBAction)pitch_slider_Touch_Up_Outside:(id)sender {
    NSLog(@"pitch_slider_Touch_Up_Outside");
    self.pitch_slider_001.value = 8191.0F;
    hd::sound::NetworkMidi::SendPitchMsg(8191);
}

- (IBAction)octave_selector_Value_Changed:(id)sender {
    NSLog(@"octave_selector_Value_Changed: %d", self.octave_selector_001.selectedSegmentIndex);
    self.current_octave = self.octave_selector_001.selectedSegmentIndex;
}

@end
