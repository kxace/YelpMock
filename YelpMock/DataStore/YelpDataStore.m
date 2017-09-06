//
//  YelpDataStore.m
//  YelpMock
//
//  Created by Sean on 9/2/17.
//  Copyright © 2017 Sean. All rights reserved.
//

#import "YelpDataStore.h"
@implementation YelpDataStore

+ (YelpDataStore *)sharedInstance {
    static YelpDataStore *_sharedInstance = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[YelpDataStore alloc] init];
    });
    return _sharedInstance;
}
@end
