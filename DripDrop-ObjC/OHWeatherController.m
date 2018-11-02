//
//  OHWeatherController.m
//  DripDrop-ObjC
//
//  Created by Owen Henley on 11/2/18.
//  Copyright © 2018 Owen Henley. All rights reserved.
//

#import "OHWeatherController.h"

@implementation OHWeatherController

static NSString *baseUrlString = @"https://api.darksky.net/forecast/";


+ (void)fetchWeather:(NSNumber *)latitude longitude:(NSNumber *)longitude block:(void (^)(BOOL))block
{
    
    // https://api.darksky.net/forecast/1e279b3844170de3848c158ecf4e41a4/37.8267,-122.4233
    // Construct URL
    
    NSURL *baseUrl = [NSURL URLWithString:baseUrlString];
    NSURL *apiSecret = [baseUrl URLByAppendingPathComponent:@"1e279b3844170de3848c158ecf4e41a4"];
    NSString *longLatString = [NSString stringWithFormat:@"%@,%@", latitude, longitude];
    NSURL *finalURL = [apiSecret URLByAppendingPathComponent:  longLatString];
    
    NSLog(@"%@",finalURL.absoluteString);

    //URLSession.resume
    [[NSURLSession sharedSession] dataTaskWithURL: finalURL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (error){
            NSLog(@"Error in %s, %@, %@", __PRETTY_FUNCTION__, error, error.localizedDescription);
            block(nil);
            return;
        }
        
        NSLog(@"%@", response);
        
        if (!data){
            NSLog(@"NO DATA Available");
            block(nil);
            return;
        }
        
        NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
        
        if (jsonDictionary == nil) {
            block(FALSE);
            return;
        }
        
        NSDictionary *dailyWeatherDictionaries = jsonDictionary[@"daily"];
        NSDictionary *currentWeatherDictionaries = jsonDictionary[@"currently"];
        
//        NSMutableArray *dailyWeather = [NSMutableArray new];
//        NSMutableArray *currentWeather = [NSMutableArray new];
        
        for (NSDictionary *dictionary in jsonDictionary) {
            NSDictionary *weatherDictionary = [dictionary objectForKey:@""];
        }
        
            }];
}

@end
