//
//  NSCache+BKImage.m
//  ImageDownloader
//
//  Created by BharathiKumar on 14/06/16.
//  Copyright © 2016 bharathi. All rights reserved.
//

#import "NSCache+BKImage.h"

@implementation NSCache (BKImage)
+ (instancetype)sharedInstance
{
    static NSCache *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[NSCache alloc] init];
        //  cache = [[NSCache alloc]init];
    });
    return sharedInstance;
}
@end
