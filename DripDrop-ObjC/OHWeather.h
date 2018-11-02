//
//  OHWeather.h
//  DripDrop-ObjC
//
//  Created by Owen Henley on 11/2/18.
//  Copyright © 2018 Owen Henley. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OHWeather : NSObject

//Top Level
@property(nonatomic, copy, readonly) NSString *location;

// Current
@property(nonatomic, copy, readonly) NSString *currentSummary;
@property(nonatomic, copy, readonly) NSNumber *currentTemp;

// Daily
@property(nonatomic, copy, readonly) NSString *dailySummary;
@property(nonatomic, copy, readonly) NSNumber *dailyTemp;
@property(nonatomic, copy, readonly) NSString *dailyIcon;
@property(nonatomic, copy, readonly) NSDate *time;


// Methods
-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(instancetype)initWithCurrentWeather:(NSDictionary *)currentWeatherDictionary;

-(instancetype)initWithDailyWeather:(NSDictionary *)dailyWeatherDictionary;

@end

NS_ASSUME_NONNULL_END
