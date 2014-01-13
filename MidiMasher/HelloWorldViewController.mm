//
//  HelloWorldViewController.m
//  MidiMasher
//
//  Created by Mike on 12/11/13.
//  Copyright (c) 2013 Mike. All rights reserved.
//

#import "HelloWorldViewController.h"

#import "NetworkMidi.h"



@implementation HelloWorldViewController

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

- (IBAction)midi_1:(id)sender {
    
    hd::sound::NetworkMidi::SendOneShot(61, 0.25F);
    self.outlet_test.backgroundColor = [UIColor blueColor];
}

- (IBAction)midi_2:(id)sender {
    
    hd::sound::NetworkMidi::SendOneShot(60, 0.25F);
    self.outlet_test.backgroundColor = [UIColor yellowColor];
}





@end
