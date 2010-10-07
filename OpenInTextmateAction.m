//
//  OpenInTextmateAction.m
//  OpenInTextmate
//
//  Created by Tyler Suggs on 12/9/08.
//  Copyright G. Tyler Suggs 2008. All rights reserved.
//

#import "OpenInTextmateAction.h"

@implementation OpenInTextmateAction

- (QSObject *)performActionOnObject:(QSObject *)dObject{
	NSString *fileLocation = [dObject objectForType:QSFilePathType];

	// Opening Textmate through command line 'mate' instead of NSWorkspace
	// because of issues with project drawer?
	NSArray *args = [NSArray arrayWithObject:fileLocation];
    [NSTask launchedTaskWithLaunchPath:@"/usr/bin/mate" arguments:args];
	
	//[[NSWorkspace sharedWorkspace] openFile: fileLocation withApplication: @"/Applications/Textmate.app" andDeactivate: YES];
	return nil;
}
@end
