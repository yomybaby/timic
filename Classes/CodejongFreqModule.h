/**
 * Your Copyright Here
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
 */
#import "TiModule.h"

@interface CodejongFreqModule : TiModule 
{
}

@property(nonatomic,readonly) CGFloat peakMicrophonePower;
@property(nonatomic,readonly) CGFloat averageMicrophonePower;
@property(nonatomic,readonly) CGFloat microphoneFrequency;

@end
