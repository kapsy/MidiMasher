//
//  MidiMasherViewController.h
//  MidiMasher
//
//  Created by Mike on 12/11/13.
//  Copyright (c) 2013 Mike. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MidiMasherViewController : UIViewController {
    NSArray* nums;
    NSArray* keys;
}

@property (nonatomic, assign) NSInteger current_octave;
@property (nonatomic, retain) NSArray* octaves;

@property (weak, nonatomic) IBOutlet UISlider *pitch_slider_001;
- (IBAction)pitch_slider_Value_Changed:(id)sender;

@property (weak, nonatomic) IBOutlet UISegmentedControl *octave_selector_001;
- (IBAction)octave_selector_Value_Changed:(id)sender;

 - (void)init_keys;

@property (nonatomic, retain) UIColor* white_off;
@property (nonatomic, retain) UIColor* white_on;
@property (nonatomic, retain) UIColor* black_off;
@property (nonatomic, retain) UIColor* black_on;

@property (weak, nonatomic) IBOutlet UIButton *key_001;
@property (weak, nonatomic) IBOutlet UIButton *key_002;
@property (weak, nonatomic) IBOutlet UIButton *key_003;
@property (weak, nonatomic) IBOutlet UIButton *key_004;
@property (weak, nonatomic) IBOutlet UIButton *key_005;
@property (weak, nonatomic) IBOutlet UIButton *key_006;
@property (weak, nonatomic) IBOutlet UIButton *key_007;
@property (weak, nonatomic) IBOutlet UIButton *key_008;
@property (weak, nonatomic) IBOutlet UIButton *key_009;
@property (weak, nonatomic) IBOutlet UIButton *key_010;
@property (weak, nonatomic) IBOutlet UIButton *key_011;
@property (weak, nonatomic) IBOutlet UIButton *key_012;

- (IBAction)key_001_touchDown:(id)sender;
- (IBAction)key_001_touchDragEnter:(id)sender;
- (IBAction)key_001_touchUpInside:(id)sender;
- (IBAction)key_001_touchUpOutside:(id)sender;

- (IBAction)key_002_touchDown:(id)sender;
- (IBAction)key_002_touchUpInside:(id)sender;
- (IBAction)key_002_touchUpOutside:(id)sender;

- (IBAction)key_003_touchDown:(id)sender;
- (IBAction)key_003_touchUpInside:(id)sender;
- (IBAction)key_003_touchUpOutside:(id)sender;

- (IBAction)key_004_touchDown:(id)sender;
- (IBAction)key_004_touchUpInside:(id)sender;
- (IBAction)key_004_touchUpOutside:(id)sender;

- (IBAction)key_005_touchDown:(id)sender;
- (IBAction)key_005_touchUpInside:(id)sender;
- (IBAction)key_005_touchUpOutside:(id)sender;

- (IBAction)key_006_touchDown:(id)sender;
- (IBAction)key_006_touchUpInside:(id)sender;
- (IBAction)key_006_touchUpOutside:(id)sender;

- (IBAction)key_007_touchDown:(id)sender;
- (IBAction)key_007_touchUpInside:(id)sender;
- (IBAction)key_007_touchUpOutside:(id)sender;

- (IBAction)key_008_touchDown:(id)sender;
- (IBAction)key_008_touchUpInside:(id)sender;
- (IBAction)key_008_touchUpOutside:(id)sender;

- (IBAction)key_009_touchDown:(id)sender;
- (IBAction)key_009_touchUpInside:(id)sender;
- (IBAction)key_009_touchUpOutside:(id)sender;

- (IBAction)key_010_touchDown:(id)sender;
- (IBAction)key_010_touchUpInside:(id)sender;
- (IBAction)key_010_touchUpOutside:(id)sender;

- (IBAction)key_011_touchDown:(id)sender;
- (IBAction)key_011_touchUpInside:(id)sender;
- (IBAction)key_011_touchUpOutside:(id)sender;

- (IBAction)key_012_touchDown:(id)sender;
- (IBAction)key_012_touchUpInside:(id)sender;
- (IBAction)key_012_touchUpOutside:(id)sender;

@end
