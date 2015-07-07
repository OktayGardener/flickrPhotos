//
//  AppDelegate.m
//  flickrPhotos
//
//  Created by Oktay Bahceci on 02/07/2015.
//  Copyright (c) 2015 Oktay Bahceci. All rights reserved.
//

#import "AppDelegate.h"
#import "OKPhotoGalleryViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	
	self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[[OKPhotoGalleryViewController alloc] initWithNibName:NSStringFromClass([OKPhotoGalleryViewController class]) bundle:nil]];
	
	[self.window makeKeyAndVisible];
	
	return YES;
}

@end
