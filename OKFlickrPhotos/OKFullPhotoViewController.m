//
//  fullPhotoViewController.m
//  flickrPhotos
//
//  Created by Oktay Bahceci on 05/07/2015.
//  Copyright (c) 2015 Oktay Bahceci. All rights reserved.
//

#import "OKFullPhotoViewController.h"
#import "AFNetworking.h"

@interface OKFullPhotoViewController () <UIScrollViewDelegate>
@property (nonatomic, strong) NSURL* imageURL;
@property (nonatomic, strong) NSIndexPath *index;
@property (nonatomic, weak) IBOutlet UIImageView *fullSizePhoto;
@property (nonatomic, weak) IBOutlet UIScrollView *scrollView;
@property (nonatomic, weak) IBOutlet UIActivityIndicatorView *loadingIndicator;

@end

@implementation OKFullPhotoViewController

- (instancetype)initWithImageURL:(NSURL*)imageURL
{
	if(self = [super init]) {
		self.imageURL = imageURL;
	}
	return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	[[self navigationController] setNavigationBarHidden:NO animated:YES];

	[self fetchImageAtURL:self.imageURL];
	
	[self.scrollView setMaximumZoomScale:5.0f];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
	
	[self.navigationController setNavigationBarHidden:YES animated:YES];
}

#pragma mark - UIScrollViewDelegate

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
	return self.fullSizePhoto;
}

- (void)fetchImageAtURL:(NSURL*)imageURL
{
	[self.loadingIndicator startAnimating];

	NSURLRequest *request = [NSURLRequest requestWithURL:imageURL];
	AFHTTPRequestOperation *requestOperation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
	[requestOperation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
		[self.fullSizePhoto setImage:[UIImage imageWithData:responseObject]];
		[self.loadingIndicator stopAnimating];
	} failure:^(AFHTTPRequestOperation *operation, NSError *error) {
		UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error retrieving image" message:[error localizedDescription] delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
		[alertView show];
		NSLog(@"%@", error);
	}];
	
	[requestOperation start];
	
/* NSURL request:
 [NSURLConnection sendAsynchronousRequest:[NSURLRequest requestWithURL:imageURL] queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
 [self.fullSizePhoto setImage:[UIImage imageWithData:data]];
 [self.loadingIndicator stopAnimating];
	}]; 
 */
}

@end
