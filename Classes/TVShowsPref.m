/*
 *	This file is part of the TVShows 2 ("Phoenix") source code.
 *	http://github.com/mattprice/TVShows/
 *
 *	TVShows is free software: you can redistribute it and/or modify
 *	it under the terms of the GNU General Public License as published by
 *	the Free Software Foundation, either version 3 of the License, or
 *	(at your option) any later version.
 *
 *	You should have received a copy of the GNU General Public License
 *	along with TVShows. If not, see <http://www.gnu.org/licenses/>.
 *
 */

#import "TVShowsPref.h"
#import "TSUserDefaults.h"
#import "AppInfoConstants.h"


@implementation TVShowsPref

- (void) didSelect
{
	NSString *buildVersion = [[[NSBundle bundleWithIdentifier: TVShowsAppDomain] infoDictionary]
							  valueForKey:@"CFBundleVersion"];
//	NSString *installedBuild = [TSUserDefaults getStringFromKey:@"installedBuild"];
	
	// Check to see if we installed a new version automatically.
//	if ( ([buildVersion intValue] > [installedBuild intValue]) &&
//		[TSUserDefaults getBoolFromKey:@"AutomaticallyInstalledLastUpdate" withDefault:NO]) {
//		
//		// Reset the key for next time.
//		[TSUserDefaults setKey:@"AutomaticallyInstalledLastUpdate" fromBool:NO];
//		
//		[self displayUpdateWindowForVersion:installedBuild];
//	}
	
	// Update the application build number in installedBuild
	[TSUserDefaults setKey:@"installedBuild" fromString:buildVersion];	
}

- (void) displayUpdateWindowForVersion:(NSString *)oldBuild
{
	// Display a window showing the release notes.
//	NSString *urlString = [NSString stringWithFormat:@"http://embercode.com/tvshows/notes/beta-%@",installedBuild];
//	NSURL *releaseNotes = [NSURL URLWithString:urlString];
//	[[updateWebView mainFrame] loadRequest:[NSURLRequest requestWithURL:releaseNotes]];
//	
//	[NSApp beginSheet: updateWindow
//	   modalForWindow: [[NSApplication sharedApplication] mainWindow]
//		modalDelegate: nil
//	   didEndSelector: nil
//		  contextInfo: nil];
//	
//	[NSApp endSheet: updateWindow];
//	[NSApp runModalForWindow: updateWindow];
}

- (IBAction) closeUpdateWindow:(id)sender
{
//	[NSApp stopModal];
//	[updateWindow orderOut:self];
}

@end
