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
    NSLog(@"NetworkMidi::InitNetworkMidi called");
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

void hd::sound::NetworkMidi::SetPitchBendRange(unsigned int rng) {

    //TODO: check rng is 0-24
    NSLog(@"SetPitchBendRange");
    const UInt8 pitchRng[] = { 0xB0, 101, 0, 0xB0, 100, 0, 0xB0, 6, 24};
    [midi sendBytes:pitchRng size:sizeof(pitchRng)];
}

void hd::sound::NetworkMidi::SendPitchMsg(int val) {

    // unsigned char msb = GetPitchBendMSB(val);
    // unsigned char lsb = GetPitchBendLSB(val);
    NSLog(@"SendPitchMessage");
    // const UInt8 pitchMsg[] = { 0xE0, msb, lsb};
    const UInt8 pitchMsg[] = { 0xE0, static_cast<UInt8>(val & 0x7F), static_cast<UInt8>(val >> 7)};
    [midi sendBytes:pitchMsg size:sizeof(pitchMsg)];
}

unsigned char hd::sound::NetworkMidi::GetPitchBendMSB(int val) {
    unsigned char msb = val; 
    msb = msb &0x7F;
    NSLog(@"msb, c: %c", msb);
    NSLog(@"msb, d: %d", msb);
    return msb;
}

unsigned char hd::sound::NetworkMidi::GetPitchBendLSB(int val) {
    unsigned char lsb = val >> 7; 
    lsb = lsb &0x7F;
    NSLog(@"lsb, c: %c", lsb);
    NSLog(@"lsb, d: %d", lsb);
    return lsb;
}
