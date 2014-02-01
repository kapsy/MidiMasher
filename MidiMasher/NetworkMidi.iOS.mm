//
//  NetworkMidi.iOS.mm
//
//  Created by Michael Petrie on 19/11/13.
//  Copyright (c) 2013 DMG. All rights reserved.
//

#include "NetworkMidi.h"
#import "PGMidi.h"

#pragma mark -
#pragma mark Singleton Functions

static PGMidi * midi = nil;

void hd::sound::NetworkMidi::InitNetworkMidi(){
    midi = [[PGMidi alloc] init];
}

void hd::sound::NetworkMidi::SendNoteOn(unsigned int note)
{
    NSLog(@"midiSendNoteOn: %d", note);
    
    // noteOff is sent intially to kill any hanging notes
    const UInt8 noteOff[]  = { 0x80, static_cast<UInt8>(note), 127 };
    const UInt8 noteOn[]  = { 0x90, static_cast<UInt8>(note), 127 };
    [midi sendBytes:noteOff size:sizeof(noteOff)];
    [midi sendBytes:noteOn size:sizeof(noteOn)];
}

void hd::sound::NetworkMidi::SendNoteOff(unsigned int note)
{
    NSLog(@"midiSendNoteOff: %d", note);

    const UInt8 noteOff[]  = { 0x80, static_cast<UInt8>(note), 127 };
    [midi sendBytes:noteOff size:sizeof(noteOff)];
}


void hd::sound::NetworkMidi::SendOneShot(unsigned int note, float time)
{
    
    SendNoteOff(note);
    SendNoteOn(note);
    
    dispatch_time_t offTimer = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(time * NSEC_PER_SEC));
    dispatch_after(offTimer, dispatch_get_main_queue(), ^(void){
        SendNoteOff(note);
    });
}
