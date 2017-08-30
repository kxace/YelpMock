//
//  YelpNetworking.h
//  YelpMock
//
//  Created by Sean on 8/26/17.
//  Copyright © 2017 Sean. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "YelpDataModel.h"

@class YelpDataModel;

@import CoreLocation;

typedef void (^RestaurantCompletionBlock)(NSArray <YelpDataModel *>* dataModelArray);

@interface YelpNetworking : NSObject

+ (YelpNetworking *)sharedInstance;

- (void)fetchRestaurantsBasedOnLocation:(CLLocation *)location term:(NSString *)term completionBlock:(RestaurantCompletionBlock)completionBlock;

@end
