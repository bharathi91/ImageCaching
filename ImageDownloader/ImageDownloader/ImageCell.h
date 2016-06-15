//
//  ImageCell.h
//  ImageDownloader
//
//  Created by BharathiKumar on 14/06/16.
//  Copyright © 2016 bharathi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BKImageView.h"
@interface ImageCell : UITableViewCell
@property (weak, nonatomic) IBOutlet BKImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *urlLabel;

@end
