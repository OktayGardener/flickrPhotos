//
//  OKSearchBarPhotoGalleryViewCell.h
//  OKFlickrPhotos
//
//  Created by Oktay Bahceci on 07/07/2015.
//  Copyright (c) 2015 Oktay Bahceci. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OKSearchBarPhotoGalleryViewCell : UICollectionReusableView <UISearchBarDelegate>

@property (nonatomic, strong) IBOutlet UISearchBar *searchBar;

@end
