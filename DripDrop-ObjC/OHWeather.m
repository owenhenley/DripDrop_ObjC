//
//  OHWeather.m
//  DripDrop-ObjC
//
//  Created by Owen Henley on 11/2/18.
//  Copyright © 2018 Owen Henley. All rights reserved.
//

#import "OHWeather.h"

@implementation OHWeather

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    NSString *location = dictionary[@"timezone"];
    self = [super init];
    if (self) {
        _location = location;
    }
    return self;
}


- (instancetype)initWithCurrentWeather:(NSDictionary *)currentWeatherDictionary
{
    NSString *currentSummary = currentWeatherDictionary[@"currently"][@"summary"];
    NSNumber *currentTemp    = currentWeatherDictionary[@"currently"][@"temperature"];
    
    self = [super init];
    if (self) {
        _currentSummary = currentSummary;
        _currentTemp    = currentTemp;
    }
    return self;
}


- (instancetype)initWithDailyWeather:(NSDictionary *)dailyWeatherDictionary
{
    NSString *dailySummary = dailyWeatherDictionary[@"daily"][@"data"][@"summary"];
    NSNumber *dailyTemp    = dailyWeatherDictionary[@"daily"][@"data"][@"temperatureHigh"];
    NSString *dailyIcon    = dailyWeatherDictionary[@"daily"][@"data"][@"icon"];
    NSDate *time           = dailyWeatherDictionary[@"daily"][@"data"][@"time"];
    
    self = [super init];
    if (self) {
        _dailySummary = dailySummary;
        _dailyTemp    = dailyTemp;
        _dailyIcon    = dailyIcon;
        _time         = time;
    }
    return self;
}


@end
