//
//  OHWeatherController.h
//  DripDrop-ObjC
//
//  Created by Owen Henley on 11/2/18.
//  Copyright © 2018 Owen Henley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import "OHWeather.h"

NS_ASSUME_NONNULL_BEGIN

@interface OHWeatherController : NSObject

+(void)fetchWeather:(NSNumber *)latitude
                    longitude: (NSNumber *)longitude
                        block: (void (^)(BOOL))block;

@end

NS_ASSUME_NONNULL_END
