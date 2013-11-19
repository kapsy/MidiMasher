//
//  HelloWorldViewController.m
//  MidiMasher
//
//  Created by Mike on 12/11/13.
//  Copyright (c) 2013 Mike. All rights reserved.
//

#import "HelloWorldViewController.h"

#import "NetworkMidi.h"



//@interface HelloWorldViewController ()
//
//@end

@implementation HelloWorldViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    midi = [[PGMidi alloc] init];
    
//    
//    
//    if (block->ContainsComponent<physics2d::PointerJoint>())
//    {
//        auto *worldComponent = m_physicsWorld->GetComponent<physics2d::World>();
//        auto *pointerJoint = block->GetComponent<physics2d::PointerJoint>();
//        pointerJoint->DestroyJoint(worldComponent);
//        
//        hd::sound::SoundController::PlayEffect("/Users/david1/Projects/dmg/PhysicsHotel/Resources/blockSelect01.caf");
//    }
    
//    hd::sound::NetworkMidi::
    
    
    
    hd::sound::NetworkMidi::InitNetworkMidi();
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

///* MIDI send routines
// input:note number - 60 is middle C
// */
//- (void) midiSendNoteOn:(UInt8)n
//{
//    const UInt8 note      = n;
//    const UInt8 noteOn[]  = { 0x90, note, 127 };
//    NSLog(@"midiSendNoteOn");
//    [midi sendBytes:noteOn size:sizeof(noteOn)];
//    
//}
//
//
//- (void) midiSendNoteOff:(UInt8)n
//{
//    const UInt8 note      = n;
//    const UInt8 noteOff[] = { 0x80, note, 0   };
//    NSLog(@"midiSendNoteOff");
//    [midi sendBytes:noteOff size:sizeof(noteOff)];
//}
//
//
////const CGFloat MY_DELAY = 0.25;
////dispatch_time_t offTimer = dispatch_time(DISPATCH_TIME_NOW, MY_DELAY * NSEC_PER_SEC);
////dispatch_after(offTimer, dispatch_get_main_queue(), ^(void)
////{
////    [midi sendBytes:noteOff size:sizeof(noteOff)];
////});
//
//
//
//- (void)oneShotMidi:(UInt8)n time:(CGFloat)t {
//    
//    [self midiSendNoteOff:n];
//    
//    
//    
//    [self midiSendNoteOn:n];
//    dispatch_time_t offTimer = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(t * NSEC_PER_SEC));
//    dispatch_after(offTimer, dispatch_get_main_queue(), ^(void){
//        [self midiSendNoteOff:n];
//    });
//    
////    @autoreleasepool {
////        NSLog(@"(A) %@", [NSThread currentThread]);
////
////    }
//}
//
//
//- (IBAction)midi_1:(id)sender {
//    
////     [self midiSendNoteOn:61];
//    [self oneShotMidi:61 time:0.25];
//    
//    self.outlet_test.backgroundColor = [UIColor blueColor];
//}
//
//- (IBAction)midi_2:(id)sender {
//    //    [self midiSendNoteOff:61];
//    [self oneShotMidi:60 time:0.25];
//    
//    self.outlet_test.backgroundColor = [UIColor yellowColor];
//}


- (IBAction)midi_1:(id)sender {
    
//     [self midiSendNoteOn:61];
//    [self oneShotMidi:61 time:0.25];
    
    hd::sound::NetworkMidi::SendOneShot(61, 0.25F);
    
    self.outlet_test.backgroundColor = [UIColor blueColor];
}

- (IBAction)midi_2:(id)sender {
    //    [self midiSendNoteOff:61];
//    [self oneShotMidi:60 time:0.25];
    
    hd::sound::NetworkMidi::SendOneShot(60, 0.25F);
    
    self.outlet_test.backgroundColor = [UIColor yellowColor];
}





@end
