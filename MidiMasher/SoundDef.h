//
//  SoundDef.h
//  MidiMasher
//
//  Created by Mike on 19/11/13.
//  Copyright (c) 2013 dmg. All rights reserved.
//

#ifndef MidiMasher_SoundDef_h
#define MidiMasher_SoundDef_h

typedef struct {
    typeid
}SoundDef;


namespace hd
{
    namespace sound
    {
        class SoundDef // to define a sound in general. don't want to get too deep into this as I think we should use the entity framework to define all non-music sounds...
        {
            
            
        public:
            
            signed int midiDebug; // -1 means no debug, otherwise a unique midi# from 0 - 127
            
            const char *filePath;
            
            // BOOL isPitchable;
            //BOOL isPannable;
            BOOL isLooping; // そうではないと一発な音
            
            
            // values that shour be able to be defined in game (using lua)
            float randPitchRange; // 0-1, used as a multiplier of pitchRange, if > 0 then a random pitch within the range is set at playtime.
            float randPanRange;
            float pitchRange;
            float panRange;
            float mixGain; // default is 1.0, used for final mix adjustments
            float gainRange; // 0-1, a percentage of the mixGain;
            float volGain; // where vol changes are set final vol = (mixGain - gainRange) + (gainRange * volGain)
            
            
            
            
            // data stuff
            unsigned short* bufferHeader;
            unsigned short* bufferData;
            unsigned int dataSize;
            unsigned int totalChunks; // needed?
            
            
            
        };
    }
}




#endif
