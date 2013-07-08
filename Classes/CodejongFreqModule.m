/**
 * Your Copyright Here
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
 */
#import <AudioToolbox/AudioToolbox.h>
#import "CodejongFreqModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"
#import "SCListener.h"

@implementation CodejongFreqModule

#pragma mark Internal

// this is generated for your module, please do not change it
-(id)moduleGUID
{
	return @"2d068ecd-8bca-4976-bcd1-a6d51bc86171";
}

// this is generated for your module, please do not change it
-(NSString*)moduleId
{
	return @"codejong.freq";
}

#pragma mark Lifecycle

-(void)startup
{
	// this method is called when the module is first loaded
	// you *must* call the superclass
	[super startup];
	
	NSLog(@"[INFO] %@ loaded",self);
}

-(void)shutdown:(id)sender
{
	// this method is called when the module is being unloaded
	// typically this is during shutdown. make sure you don't do too
	// much processing here or the app will be quit forceably
	
	// you *must* call the superclass
	[super shutdown:sender];
}

#pragma mark Cleanup 

-(void)dealloc
{
	// release any resources that have been retained by the module
	[super dealloc];
}

#pragma mark Internal Memory Management

-(void)didReceiveMemoryWarning:(NSNotification*)notification
{
	// optionally release any resources that can be dynamically
	// reloaded once memory is available - such as caches
	[super didReceiveMemoryWarning:notification];
}

#pragma mark Listener Notifications
/*
-(void)_listenerAdded:(NSString *)type count:(int)count
{
	if (count == 1 && [type isEqualToString:@"my_event"])
	{
		// the first (of potentially many) listener is being added 
		// for event named 'my_event'
	}
}

-(void)_listenerRemoved:(NSString *)type count:(int)count
{
	if (count == 0 && [type isEqualToString:@"my_event"])
	{
		// the last listener called for event named 'my_event' has
		// been removed, we can optionally clean up any resources
		// since no body is listening at this point for that event
	}
}
*/

#pragma Public APIs
/*
-(id)example:(id)args
{
	// example method
	return @"hello world";
}

-(id)exampleProp
{
	// example property getter
	return @"hello world";
}

-(void)setExampleProp:(id)value
{
	// example property setter
}
*/

-(void)startMicrophoneMonitor:(id)args
{
	//[[SCListener sharedListener] listen];
    // Start listening.
    [[SCListener sharedListener] listen];
    
    // Retrieve the average power.
    NSLog(@"%f",[[SCListener sharedListener] averagePower]);
    
    // Retrieve the peak power.
    NSLog(@"%f",[[SCListener sharedListener] peakPower]);
}

-(void)stopMicrophoneMonitor:(id)args
{
	[[SCListener sharedListener] stop];
}

-(CGFloat)microphoneFrequency
{
    if ([[SCListener sharedListener] isListening])
	{
		return [[SCListener sharedListener] frequency];
	}
	return -1;
}

-(CGFloat)peakMicrophonePower
{
	if ([[SCListener sharedListener] isListening])
	{
		return [[SCListener sharedListener] peakPower];
	}
	return -1;
}

-(CGFloat)averageMicrophonePower
{
	if ([[SCListener sharedListener] isListening])
	{
		return [[SCListener sharedListener] averagePower];
	}
	return -1;
}


@end
