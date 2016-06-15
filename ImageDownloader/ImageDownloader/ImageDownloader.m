//
//  ImageDownloader.m
//  ImageDownloader
//
//  Created by BharathiKumar on 14/06/16.
//  Copyright © 2016 bharathi. All rights reserved.
//

#import "ImageDownloader.h"
#import <UIKit/UIKit.h>
#import "NSCache+BKImage.h"
@implementation ImageDownloader
+ (void)downloadImageWithURL:(NSURL *)url completionBlock:(void (^)(BOOL succeeded, UIImage *image))completionBlock
{
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    [NSURLConnection sendAsynchronousRequest:request
                                       queue:[NSOperationQueue mainQueue]
                           completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
                               if ( !error )
                               {
                                   UIImage *image = [[UIImage alloc] initWithData:data];
                                   completionBlock(YES,image);
                                   [[NSCache sharedInstance ]setObject:image forKey:[url absoluteString]];
                                   
                               } else{
                                   completionBlock(NO,nil);
                               }
                           }];
}
@end
