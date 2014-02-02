//
//  NetworkMidi.h
//
//  Created by Michael Petrie on 19/11/13.
//  Copyright (c) 2013 DMG. All rights reserved.
//

#ifndef _NetworkMidi_h
#define _NetworkMidi_h


namespace hd
{
    namespace sound
    {
        class NetworkMidi
        {
        public:
            
            static void InitNetworkMidi();
            
            static void SendNoteOn(unsigned int note);
            
            static void SendNoteOff(unsigned int note);
            
            static void SendOneShot(unsigned int note, float time);

            static void SetPitchBendRange(unsigned int rng);

            static void SendPitchMsg(int val);

        };
    }
}
#endif
